#!/bin/bash

echo "Downloading sauna images from alternative sources..."

# Remove failed downloads
rm -f finnish-sauna.jpg infrared-sauna.jpg steam-hammam.jpg

# Try Pexels with proper user-agent and headers
HEADERS="-H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)'"

# Finnish sauna from Pexels
curl -L -o finnish-sauna.jpg "https://images.pexels.com/photos/3931680/pexels-photo-3931680.jpeg?auto=compress&cs=tinysrgb&w=800" 2>/dev/null
if [ -s finnish-sauna.jpg ]; then echo "✓ Finnish sauna (Pexels)"; else rm -f finnish-sauna.jpg; echo "✗ Finnish sauna failed"; fi

# Infrared/wooden sauna
curl -L -o infrared-sauna.jpg "https://images.pexels.com/photos/3807517/pexels-photo-3807517.jpeg?auto=compress&cs=tinysrgb&w=800" 2>/dev/null
if [ -s infrared-sauna.jpg ]; then echo "✓ Infrared sauna"; else rm -f infrared-sauna.jpg; echo "✗ Infrared sauna failed"; fi

# Steam/spa relaxation
curl -L -o steam-hammam.jpg "https://images.pexels.com/photos/3998371/pexels-photo-3998371.jpeg?auto=compress&cs=tinysrgb&w=800" 2>/dev/null
if [ -s steam-hammam.jpg ]; then echo "✓ Steam/hammam"; else rm -f steam-hammam.jpg; echo "✗ Steam/hammam failed"; fi

# If we still need images, create from the hero image we have
if [ ! -f finnish-sauna.jpg ]; then
  cp hero-sauna.jpg finnish-sauna.jpg
  echo "✓ Finnish sauna (from hero)"
fi

if [ ! -f infrared-sauna.jpg ]; then
  cp wellness-sauna.jpg infrared-sauna.jpg
  echo "✓ Infrared sauna (from wellness)"
fi

if [ ! -f steam-hammam.jpg ]; then
  cp wellness-sauna.jpg steam-hammam.jpg
  echo "✓ Steam hammam (from wellness)"
fi

echo ""
ls -lh *.jpg
