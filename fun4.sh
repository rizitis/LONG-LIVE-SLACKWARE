#!/bin/bash

# Function to move the cursor
move_cursor() {
    echo -ne "\033[1C"  # Move the cursor one column to the right
    sleep 0.1  # Wait for 100 milliseconds
}

# Trap the SIGINT signal (generated by Ctrl+C) and ignore it
trap '' SIGINT

# Infinite loop
while true; do
    echo -n "|"
    sleep 0.1
    echo -ne "\b/"
    sleep 0.1
    echo -ne "\b-"
    sleep 0.1
    echo -ne "\b\\"
    sleep 0.1
    move_cursor
done
