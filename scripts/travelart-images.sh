#!/bin/bash
# Make web-sized copies of the Travel and Art photos listed in _data/travelart.yml
# (originals live in images/originals/, which is gitignored).
#
#   images/thumbs/<name>.jpg  640px wide, shown in the polaroid grid
#   images/large/<name>.jpg   2000px on the long edge, opened on click
#
# Originals are left untouched. Existing copies are skipped, so just rerun
# this after adding new photos (macOS only: it uses the built-in `sips`).

set -euo pipefail
cd "$(dirname "$0")/.."

mkdir -p images/thumbs images/large

grep -E '^\s*-?\s*(image|poster):' _data/travelart.yml | awk '{print $NF}' | tr -d '"' | while read -r src; do
  src="${src#/}"
  name="$(basename "${src%.*}")"
  if [ -f "images/thumbs/$name.jpg" ] && [ -f "images/large/$name.jpg" ]; then
    continue
  fi
  if [ ! -f "$src" ]; then
    echo "missing: $src" >&2
    continue
  fi
  w="$(sips -g pixelWidth "$src" | awk '/pixelWidth/ {print $2}')"
  h="$(sips -g pixelHeight "$src" | awk '/pixelHeight/ {print $2}')"
  long=$(( w > h ? w : h ))
  # never upscale small images
  if [ ! -f "images/thumbs/$name.jpg" ]; then
    sips -s format jpeg -s formatOptions 72 --resampleWidth $(( w < 640 ? w : 640 )) "$src" --out "images/thumbs/$name.jpg" >/dev/null
    echo "thumb: $name"
  fi
  if [ ! -f "images/large/$name.jpg" ]; then
    sips -s format jpeg -s formatOptions 80 -Z $(( long < 2000 ? long : 2000 )) "$src" --out "images/large/$name.jpg" >/dev/null
    echo "large: $name"
  fi
done
