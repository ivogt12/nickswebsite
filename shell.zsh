#!/bin/zsh

# Create an output folder for webp files
mkdir -p images_webp

# Loop through all PNG files in the images folder
for file in images/*.png; do
  # Get the base filename without path and extension
  base=$(basename "${file%.png}")

  # Convert to webp with quality 75 (adjust as needed)
  ffmpeg -i "$file" -q:v 75 "images_webp/${base}.webp"

  echo "Converted: $file → images_webp/${base}.webp"
done

echo "✅ Conversion complete! All files saved in images_webp/"
