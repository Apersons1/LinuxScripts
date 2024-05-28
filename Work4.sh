#!/bin/bash

# List all active processes
# Ask the user which process they want to kill based on the POS ID

# List all active processes
ps -e

# Get a number from the user
# check if a number was entered and if its from 0-9
is_number() {
    local input="$1"
    [[ $input =~ ^[0-9]+$ ]]
}

# Runs loop until a valid number has been eneterd  
while true; do
    read -p "Please enter a number: " number
    if is_number "$number"; then
        break
    else
        echo "You didnt enter number, please enter a number."
    fi
done

# Stop the process
kill $number

# give user update if process was completed or not
if [ $? -eq 0 ]; then
    echo "Process $pid has been stopped."
else
    echo "Failed to stop process $pid."
fi
