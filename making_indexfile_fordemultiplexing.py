# this script makes cellbarchode file in the format of fa file
#writer: Ensieh Habibi

# Open the input file
with open("well_and_barcode.txt", "r") as f:
    # Read the data from the file
    input_data = [line.strip().split("\t") for line in f]

# Create an empty list to store the formatted output
formatted_output = []

# Loop through the input data
for well_id, well_barcode in input_data:
    # Add the well ID with a ">" symbol to the formatted output
    formatted_output.append(f">{well_id}")
    # Add the well barcode with a "^" symbol to the formatted output
    formatted_output.append(f"^{well_barcode}")

# Print the formatted output
for line in formatted_output:
    print(line)

