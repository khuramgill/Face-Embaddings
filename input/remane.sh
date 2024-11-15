#!/bin/bash

# Define the directory containing the files
directory="friends"

# Change to the directory
cd "$directory" || exit

# Initialize a counter
count=1

# Loop through each file in the directory
for file in *; do
    # Check if the file is a regular file
    if [[ -f $file ]]; then
        # Get the file extension
        extension="${file##*.}"

        # Rename the file to a sequential number with the original extension
        mv "$file" "$count.$extension"

        # Increment the counter
        ((count++))
    fi
done
