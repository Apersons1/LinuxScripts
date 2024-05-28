#!/bin/bash

# Get the Directory name and make sure teh user enters something
while [ -z "$dirName" ]; do
        #get the users name
        read -p  "Enter a directory name: " dirName
        if [ -z "$dirName" ]; then
                echo "You didnt enter a username, please try again"
                echo  "Quit by CTRL + Z"
        fi
done

# Get all the details of the direcotry and print informations about it
# check if the direcoty exists
if [ -d "$dirName" ]; then
    num_files=$(find "$dirName" -type f | wc -l)
    last_edited=$(stat -c %y "$dirName")
    largest_file=$(find "$dirName" -type f -exec du -h {} + | sort -rh | head -n 1)
    smallest_file=$(find "$dirName" -type f -exec du -h {} + | sort -h | head -n 1)

    echo "Number of files: $num_files"
    echo "Last edited: $last_edited"
    echo "Largest file: $largest_file"
    echo "Smallest file: $smallest_file"
else
    echo "Directory $dir_name does not exist."
fi
