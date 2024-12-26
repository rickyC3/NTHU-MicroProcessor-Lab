import threading
import keyboard                                                     # Need to install, use `pip install keyboard` command
import serial                                                       # Need to install, use `pip install pyserial` command
                                                                    # Notice, DO NOT INSTALL `pip install serial`, IT WON'T WORK

port = serial.Serial('COM3', 9600, timeout=0)                       # you should set your own COM port setting manually

stop_event = threading.Event()

# transmition data to 8051
def transmit_data():
    print("\nEnter characters to send.\nThe received data will be displayed below.\n(Press 'Esc' two times to exit)...\n")

    while not stop_event.is_set():
        char = keyboard.read_event(suppress=True)
        if char.event_type == "down":
            if char.name == 'esc':
                stop_event.set()
                break
            if len(char.name) == 1:                                 # Only process single-character keys
                port.write(char.name.encode())                      # Send to serial port
                print(f"Sent: {char.name}")         

# Recieve data from 8051
def receive_data():
    while not stop_event.is_set():
        try:                                                        # try to receive data
            response = port.readline()
            if response:
                print(f"Received: {response.decode().strip()}")
        except Exception as e:
            print(f"Error: {e}")
            stop_event.set()

# Two thread, one for transmit and one for receive.
transmit_thread = threading.Thread(target=transmit_data, daemon=True)
receive_thread = threading.Thread(target=receive_data, daemon=True)

transmit_thread.start()
receive_thread.start()

# close the program and the serial port.
transmit_thread.join()
port.close()
print("\nSerial port closed.\n")