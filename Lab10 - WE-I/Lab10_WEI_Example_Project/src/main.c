#include "hx_drv_tflm.h"
#include "synopsys_wei_delay.h"
#include "synopsys_wei_i2c_oled1306.h"

#include "stdio.h"

#define ball_x_size 2								// Ball width
#define ball_y_size 2								// Ball height
#define ball_x_boundary1 0							// Screen left boundary
#define ball_x_boundary2 (127 - (ball_x_size-1))	// Screen right boundary
#define ball_y_boundary1 0							// Screen top boundary
#define ball_y_boundary2 (63 - (ball_y_size-1))		// Screen buttom boundary

void oled_init_display(void);
void compute_ball_location(void);

float ball_vx_speed = 1.0;				// # move tile along x axis per time
float ball_vy_speed = 2.0;				// # move tile along y axis per time

float ball_x_location_now = 50.0;		// Initial location
float ball_y_location_now = 4.0;		// Initial location

int main(int argc, char* argv[])
{

	hx_drv_share_switch(SHARE_MODE_I2CM);

	OLED_Init();
	OLED_Clear();

	oled_init_display();

	while(1)
	{
    	compute_ball_location();
 	}
}

// Display ping-pong board //
void oled_init_display(void)
{
	uint8_t oled_clean_col , oled_clean_page;
	for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page++)
	{
        OLED_SetCursor(oled_clean_page, 0);
		for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) 
		{
			if((oled_clean_col == 0) || (oled_clean_col == 1) || (oled_clean_col == 127))
            	oledSendData(0xff);
   			else if(oled_clean_page == 0)
            	oledSendData(0x01);
   			else if(oled_clean_page == 7)
            	oledSendData(0x80);
   			else
            	oledSendData(0x00);
		}
	}
}

void compute_ball_location(void)
{
	float ball_x_location_next;
	float ball_y_location_next;
	
	uint8_t ball_x_location_int;
	uint8_t ball_y_location_int;
	
	uint8_t ball_x_cnt;
	uint8_t ball_y_cnt;
	
	uint8_t ball_x_i;
	uint8_t ball_y_i;
	uint8_t ball_y_i_last;
	
	uint8_t ball_oled_buf;
	

//Clear ball location//
	ball_x_location_int = ball_x_location_now;
	ball_y_location_int = ball_y_location_now;

	for(ball_x_cnt = 0; ball_x_cnt < ball_x_size; ball_x_cnt ++)		// Erase ball from its left to right
	{
		ball_x_i = ball_x_location_int + ball_x_cnt;
		ball_y_i = ball_y_location_int;
		
		for(ball_y_cnt = 0; ball_y_cnt < ball_y_size; ball_y_cnt ++)	// Erase ball from its top to buttom
		{
			ball_y_i = ball_y_location_int + ball_y_cnt;

			if((ball_y_i / 8) == 0)
				ball_oled_buf =  0x01;									// Erase, but keep the buttom boundary
			else if((ball_y_i / 8) == 7)
				ball_oled_buf = 0x80;									// Erase, but keep the top boundary
			else 
				ball_oled_buf = 0x00;									// Erase
			
			OLED_SetCursor(ball_y_i / 8, ball_x_i);
			oledSendData(ball_oled_buf);
		}	
	}
	
//Collision and bounce//
	ball_x_location_next = ball_x_location_now + ball_vx_speed;			// Compute next location
	ball_y_location_next = ball_y_location_now + ball_vy_speed;			// Compute next location
	
	if(ball_x_location_next <= ball_x_boundary1)						// If hit left boundary
	{
		ball_x_location_next = ball_x_boundary1 + (ball_x_boundary1 - ball_x_location_next + 1) ;
		ball_vx_speed = -ball_vx_speed;
	}
	else if(ball_x_location_next >= ball_x_boundary2)					// If hit right boundary
	{
		ball_x_location_next = ball_x_boundary2 - (ball_x_location_next - ball_x_boundary2 + 1) ;
		ball_vx_speed = -ball_vx_speed;
	}
	
	if(ball_y_location_next <= ball_y_boundary1)						// If hit top boundary
	{
		ball_y_location_next = ball_y_boundary1 + (ball_y_boundary1 - ball_y_location_next + 1) ;
		ball_vy_speed = -ball_vy_speed;
	}
	else if(ball_y_location_next >= ball_y_boundary2)					// If hit buttom boundary
	{
		ball_y_location_next = ball_y_boundary2 - (ball_y_location_next - ball_y_boundary2 + 1) ;
		ball_vy_speed = -ball_vy_speed;
	}
	
	ball_x_location_now = ball_x_location_next;							// Update current location
	ball_y_location_now = ball_y_location_next;							// Update current location

	
//Display ball location//
	ball_x_location_int = ball_x_location_now;
	ball_y_location_int = ball_y_location_now;
	
	for(ball_x_cnt = 0; ball_x_cnt < ball_x_size; ball_x_cnt ++)		// Draw ball from its left to right
	{
		ball_oled_buf = 0x00;
		ball_x_i = ball_x_location_int + ball_x_cnt;
		ball_y_i = ball_y_location_int;
		ball_y_i_last = ball_y_location_int;
		
			
		if((ball_y_i / 8) == 0)
			ball_oled_buf = ball_oled_buf | 0x01;
		else if((ball_y_i / 8) == 7)
			ball_oled_buf = ball_oled_buf | 0x80;
			
		for(ball_y_cnt = 0; ball_y_cnt < ball_y_size; ball_y_cnt ++)	// Draw ball from its top to buttom
		{
			ball_y_i = ball_y_location_int + ball_y_cnt;
			
			if((ball_y_i_last / 8) == (ball_y_i / 8))
				ball_oled_buf = ball_oled_buf | (0x01 << (ball_y_i % 8));
			else 
				ball_oled_buf = (0x01 << (ball_y_i % 8));
				
			ball_y_i_last = ball_y_i;
			
			if((ball_y_i / 8) == 0)
				ball_oled_buf = ball_oled_buf | 0x01;
			else if((ball_y_i / 8) == 7)
				ball_oled_buf = ball_oled_buf | 0x80;	
				
			OLED_SetCursor(ball_y_i / 8, ball_x_i);
			oledSendData(ball_oled_buf);
		}	
	}
}
