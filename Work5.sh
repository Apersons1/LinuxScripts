#!/bin/bash

numbers=()

while true; do
    read -p "Enter a number or type 'done' to finish: " input
    if [ "$input" == "done" ]; then
        break
    fi
    numbers+=($input)
done

# Sort the numbers
sorted_numbers=($(printf "%s\n" "${numbers[@]}" | sort -n))

# Print sorted numbers
echo "Sorted numbers: ${sorted_numbers[@]}"
