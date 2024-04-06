#!/bin/bash

# URL of the file to download
url="https://assetdelivery.roblox.com/v1/asset/?id=16295427447"

# Output file path
output_file="output.txt"

# Download the file
curl -sS -o "$output_file" "$url"

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "File downloaded successfully."
    
    # Process the file content here, for example, you can print it
    cat "$output_file"
else
    echo "Failed to download the file."
fi
