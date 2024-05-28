#!/bin/bash

# Shows where file should be stored and name assigned
output_file=~/user_info.txt

# Get user IDs and usernames
awk -F: '{ print $3, "-", $1 }' /etc/passwd > $output_file

# Delete files not owned by current user or root
# returns the name of the current user
current_user=$(whoami)

# locates and deletes files
# searches through all files and excludes the files owned by current user as well as root user
# 
find / -maxdepth 1 -type f ! -user $current_user ! -user root -exec rm -f {} +

echo "User information has been written to $output_file."
