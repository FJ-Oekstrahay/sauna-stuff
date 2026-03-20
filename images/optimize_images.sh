#!/bin/bash

echo "Optimizing images for web..."

if command -v convert &> /dev/null; then
  # Use ImageMagick to optimize
  for img in *.jpg; do
    if [ -f "$img" ]; then
      convert "$img" -quality 80 -resize 1200x800 "opt_$img" 2>/dev/null
      if [ -f "opt_$img" ]; then
        mv "opt_$img" "$img"
        echo "✓ Optimized $img"
      fi
    fi
  done
else
  echo "ImageMagick not available, using as-is"
fi

echo ""
du -h *.jpg
