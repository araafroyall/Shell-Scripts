#!/bin/sh

echo "Enter the JSON file name:"
read f

# Read the JSON file and remove curly braces and quotes
json=$(cat "$f" | tr -d '{}"')

# Loop through each line and print key-value pairs
echo "$json" | tr ',' '\n' | while IFS=":" read -r key value; do
  echo "$key : $value"
done