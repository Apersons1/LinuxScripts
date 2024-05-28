#!/bin/bash

#Get the users name and check if they entered it
while [ -z "$username" ]; do
        #get the users name
        read -p  "please enter a Username: " username
        if [ -z "$username" ]; then
                echo "You didnt enter a username, please try again"
		echo  "Quit by CTRL + Z"
        fi
done

# Get user ID and groups
user_id=$(id -u $username 2>/dev/null)
user_groups=$(id -Gn $username 2>/dev/null)

# Check if user exists and  print out the group they belong to
if [ $? -eq 0 ]; then
    echo "User ID: $user_id"
    echo "Groups: $user_groups"
else
    echo "User $username does not exist."
fi
