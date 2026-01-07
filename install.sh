#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="${HOME}/.local/bin"

mkdir -p "$BIN_DIR"

# Symlink td and tv
ln -sf "$SCRIPT_DIR/bin/td" "$BIN_DIR/td"
ln -sf "$SCRIPT_DIR/bin/tv" "$BIN_DIR/tv"

echo "Installed:"
echo "  td -> $SCRIPT_DIR/bin/td"
echo "  tv -> $SCRIPT_DIR/bin/tv"
echo ""
echo "Make sure $BIN_DIR is in your PATH"
