#!/usr/bin/env sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
target_dir="$HOME/.codex/pets/mallow"

mkdir -p "$target_dir"
cp "$script_dir/pet.json" "$target_dir/pet.json"
cp "$script_dir/spritesheet.webp" "$target_dir/spritesheet.webp"

printf 'Mallow installed to %s\n' "$target_dir"
