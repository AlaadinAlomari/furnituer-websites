#!/usr/bin/env bash
# Downloads the 8 generated Mobilia Qatar images and converts them to the
# web-sized WebP files index.html expects.
#
#   bash assets/fetch-assets.sh
#
# Requires: curl + either ImageMagick ("magick"/"convert") or cwebp.
# NOTE: these source URLs are temporary — run this soon after generation.
set -euo pipefail
cd "$(dirname "$0")"
B="https://d8j0ntlcm91z4.cloudfront.net/user_3AevcWOtWtwmpG3nZjjNAiSukko"

fetch() { # name url width
  echo "→ $1"
  if ! curl -fsSL --retry 3 "$2" -o "_raw_$1.png"; then
    echo "   FAILED — the temporary source URL has most likely expired."
    echo "   Regenerate the images and update the URLs at the bottom of this script."
    rm -f "_raw_$1.png"; return 1
  fi
  if command -v magick >/dev/null 2>&1; then
    magick "_raw_$1.png" -resize "$3x" -strip -quality 72 "$1.webp"
  elif command -v convert >/dev/null 2>&1; then
    convert "_raw_$1.png" -resize "$3x" -strip -quality 72 "$1.webp"
  elif command -v cwebp >/dev/null 2>&1; then
    cwebp -q 72 -resize "$3" 0 "_raw_$1.png" -o "$1.webp"
  else
    echo "   no image tool found — keeping PNG as $1.png"; mv "_raw_$1.png" "$1.png"; return
  fi
  rm -f "_raw_$1.png"
}

fetch hero     "$B/hf_20260918_152206_c8a2960a-ea35-4dcd-927d-17b44bf8d0b9.png" 1800
fetch bedroom  "$B/hf_20260918_152206_2d239900-1338-4a73-b187-b2509dfabc4a.png" 1000
fetch majlis   "$B/hf_20260918_152206_83460014-05bf-4aa9-a14d-4d9e5dc5e208.png" 1000
fetch dining   "$B/hf_20260918_152236_cfd44fd5-64e6-4b96-8953-8ad0734c2c98.png" 1000
fetch decor    "$B/hf_20260918_152206_42f68f8a-74dd-4c20-8e1f-d97306d2f7c9.png" 1000
fetch showroom "$B/hf_20260918_152237_463ad892-dfd1-4cd4-b3e9-5576de4c2c31.png" 1600
fetch armchair "$B/hf_20260918_152206_26766778-5011-4fc4-94a5-264369c34940.png" 900
fetch swatches "$B/hf_20260918_152206_83f04cd3-ba68-4471-8edb-9c534240a789.png" 1200

# og.jpg for social sharing — a 1200x630 crop of the hero
if command -v magick >/dev/null 2>&1 && [ -f hero.webp ]; then
  magick hero.webp -resize 1200x630^ -gravity center -extent 1200x630 -quality 82 og.jpg
fi
echo "Done. Files in $(pwd)"
