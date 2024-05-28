#!/bin/bash

# Get a number from the user
# check if a number was entered and if its from 0-9
is_number() {
    local input="$1"
    [[ $input =~ ^[0-9]+$ ]]
}


# Runs loop until a valid number has been eneterd 
# 
while true; do
    read -p "Please enter a number: " number

    if is_number "$number"; then
        break
    else
        echo "That's not a valid number. Please try again."
    fi
done

# Run the check number method and store the results  in RESULTS variable

if (( $number % 2 == 0 )); then
	results="$number is even"
else
	results="$number is odd"
fi

# Go into the users direcotry to store results
cd WAT_*/

# Store results in file3 
echo $results > file3.txt
echo $results

# Ask the user if they want to delte file3 I dont know why
read -p "Do you want to remve file3.txt? (y/n): " choice
if [ "$choice" == "y" ]; then
	rm file3.txt
else
	# cahnges File 3 name and moves it to hoem directory
	mv file3.txt changedFileName.txt
	mv changedFileName.txt ~/
fi
