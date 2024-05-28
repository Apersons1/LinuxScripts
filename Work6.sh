#!/bin/bash

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

numbers=($(seq 1 $number))

# Go though list and see any numbers are devided by 3 and 5 and
# print appropriate word
for num in "${numbers[@]}"; do
    if (( num % 3 == 0 )); then
        echo "Fizz!"
    elif (( num % 5 == 0 )); then
        echo "Buzz!"
    else
        echo $num
    fi
done
