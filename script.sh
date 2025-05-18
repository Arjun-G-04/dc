#!/bin/bash

# Prompt the user for the relative path
read -p "Enter the relative path to the directory containing images: " image_dir

# Check if the directory exists
if [ ! -d "$image_dir" ]; then
  echo "Error: Directory '$image_dir' not found."
  exit 1
fi

# Check if cwebp command is available
if ! command -v cwebp &> /dev/null
then
    echo "Error: cwebp command not found. Please install webp tools (e.g., using brew install webp)."
    exit 1
fi

# Find and convert PNG, JPEG, and JPG files
find "$image_dir" -type f \( -iname "*.png" -o -iname "*.jpeg" -o -iname "*.jpg" \) | while read filepath; do
    # Construct the output filename with .webp extension
    filename=$(basename "$filepath")
    dirname=$(dirname "$filepath")
    output_filename="${filename%.*}.webp"
    output_filepath="$dirname/$output_filename"

    echo "Converting '$filepath' to '$output_filepath'..."

    # Convert the image using cwebp (you can add -q for quality control if needed)
    cwebp "$filepath" -o "$output_filepath"

    if [ $? -eq 0 ]; then
        echo "Successfully converted '$filepath'."
    else
        echo "Error converting '$filepath'."
    fi
done

echo "Conversion process finished."
