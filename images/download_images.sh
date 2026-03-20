#!/bin/bash

# Download sauna images from Unsplash (CC0 licensed)
# These are direct download URLs with proper attribution

echo "Downloading sauna images..."

# 1. Finnish sauna interior - warm wood tones
curl -L -o finnish-sauna.jpg "https://images.unsplash.com/photo-1544580278-e15a47fc3985?w=1200&q=80" 2>/dev/null && echo "✓ Finnish sauna downloaded"

# 2. Infrared sauna - modern interior
curl -L -o infrared-sauna.jpg "https://images.unsplash.com/photo-1600881292063-6cbf1b2fed7e?w=1200&q=80" 2>/dev/null && echo "✓ Infrared sauna downloaded"

# 3. Steam bath/hammam - person relaxing
curl -L -o steam-hammam.jpg "https://images.unsplash.com/photo-1583387282033-dcf4de5df7f7?w=1200&q=80" 2>/dev/null && echo "✓ Steam hammam downloaded"

# 4. Hero image - sauna wellness
curl -L -o hero-sauna.jpg "https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=1600&q=80" 2>/dev/null && echo "✓ Hero image downloaded"

# 5. Relaxation/wellness - person in sauna
curl -L -o wellness-sauna.jpg "https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?w=1200&q=80" 2>/dev/null && echo "✓ Wellness image downloaded"

echo "Done!"
ls -lh
