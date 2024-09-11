#!/bin/bash

## Nothing to see here, just some scripts saved for future reference!

fmpeg -i preview.apng animation-%03d.png

# Directory containing your PNG images
INPUT_DIR="./images"
OUTPUT_DIR="./output"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop over all PNG images in the input directory
for img in "$INPUT_DIR"/*.png; do
  # Get the base name of the file (without path)
  base=$(basename "$img")

  # Compose the command for converting the image
  magick "$img" -background "#181a21" -alpha remove -alpha off "$OUTPUT_DIR/$base"
  echo "Processed $img -> $OUTPUT_DIR/$base"
done
