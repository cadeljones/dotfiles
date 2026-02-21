#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="${DOTFILES_DIR:-$HOME/dotfiles}"
PACKAGES=(nvim tmux ghostty zsh karabiner zed aerospace)

if ! command -v stow >/dev/null 2>&1; then
  if command -v brew >/dev/null 2>&1; then
    brew install stow
  else
    echo "stow is not installed. Install it first, then rerun this script."
    exit 1
  fi
fi

stow -R -t "$HOME" -d "$DOTFILES_DIR" "${PACKAGES[@]}"
echo "Done. Stowed: ${PACKAGES[*]}"
