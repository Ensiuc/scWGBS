#!/bin/bash

# Define input and output file paths
input_file="well_and_barcode.txt"
output_file="formatted_indexfile.txt"

# Check if input file exists
if [[ ! -f "$input_file" ]]; then
  echo "Error: Input file '$input_file' not found."
  exit 1
fi

# Open output file for writing
> "$output_file"

# Loop through lines in input file
while IFS=$'\t' read -r well_id barcode; do
  # Check if both columns are populated
  if [[ -n "$well_id" && -n "$barcode" ]]; then
    # Write formatted data to output file
    echo ">${well_id}" >> "$output_file"
    echo "^${barcode}" >> "$output_file"
  else
    echo "Warning: Line with missing data found in '$input_file'."
  fi
done < "$input_file"

# Success message
echo "Formatted data written to '$output_file'."

