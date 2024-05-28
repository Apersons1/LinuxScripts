#!/bin/bash

#Get the users name
while [ -z "$name" ]; do
	#get the users name
	echo "please enter your name"
	read name
	if [ -z "$name" ]; then
		echo "You didnt enter your name, no need to try and test the system"
	fi
done

# current location for testing
now=$(pwd)

# use name to create a directory and move into new director with name
# WAT_[your first name]
mkdir "WAT_${name}"

# Navigate into the new directory
cd "WAT_${name}"

# Create three new files
touch file1.txt file2.txt file3.txt

# Add some text to one of these files
echo "There is some text here" > file1.txt

# Create another directory named childDir within the WAT directory
mkdir childDir

# Copy the file you created and edited into the new childDir directory
cp file1.txt childDir/

# Print a success message
echo "${name} Directory and files have been created."
