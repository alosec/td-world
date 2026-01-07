#!/bin/bash
set -euo pipefail

# td-world installer
# Downloads td and tv to ~/.local/bin

BIN_DIR="${HOME}/.local/bin"
REPO="https://raw.githubusercontent.com/alosec/td-world/main/bin"

mkdir -p "$BIN_DIR"

echo "Installing td..."
curl -fsSL "$REPO/td" -o "$BIN_DIR/td"
chmod +x "$BIN_DIR/td"

echo "Installing tv..."
curl -fsSL "$REPO/tv" -o "$BIN_DIR/tv"
chmod +x "$BIN_DIR/tv"

echo ""
echo "Installed to $BIN_DIR"
echo "  td - task tracker"
echo "  tv - fzf viewer"
echo ""

# Check if in PATH
if [[ ":$PATH:" != *":$BIN_DIR:"* ]]; then
  echo "Add to your shell config:"
  echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
fi
