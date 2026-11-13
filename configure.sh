#!/bin/bash

# protection against accidentally stowing something completely wrong
cd "$(dirname "$0")" || exit 1

# directories that must exist for real; stow links only the files inside
real_dirs=(
  ~/.local/share/applications
  ~/.local/bin
  ~/bin
  ~/.local/share/fonts
  ~/.config/gtk-3.0
)

# migrate: if any of these is still a folded symlink, unstow everything first
for d in "${real_dirs[@]}"; do
  if [ -L "$d" ]; then
    for pkg in */; do stow -D "${pkg%/}"; done
    break
  fi
done

mkdir -p "${real_dirs[@]}"

# stow every subdir
for dir in */; do
    dir="${dir%/}"
    echo "Stowing: $dir..."
    stow "$dir"
done
