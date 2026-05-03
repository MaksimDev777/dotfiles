#!/bin/bash

set -e

if ! command -v stow &>/dev/null; then
  echo "Installing stow..."
  brew install stow
fi

cd "$(dirname "$0")"

echo "Stowing dotfiles..."
stow */

TPM_DIR="$HOME/.tmux/plugins/tpm"
if [ ! -d "$TPM_DIR" ]; then
  echo "Installing TPM..."
  git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi

echo "Installing tmux plugins..."
"$TPM_DIR/bin/install_plugins"

echo "Done."
