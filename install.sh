#!/bin/bash

# OpenCode Agents Installer
# Copies agent files to ~/.config/opencode/agent/

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/.opencode/agent"
TARGET_DIR="$HOME/.config/opencode/agent"

echo "OpenCode Agents Installer"
echo "========================="
echo ""
echo "Source: $SOURCE_DIR"
echo "Target: $TARGET_DIR"
echo ""

# Check source exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory not found: $SOURCE_DIR"
    exit 1
fi

# Create target directory if needed
mkdir -p "$TARGET_DIR"

# List agents to install
echo "Agents to install:"
for agent in "$SOURCE_DIR"/*.md; do
    echo "  - $(basename "$agent")"
done
echo ""

# Confirm
read -p "Install these agents? (y/N) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    cp "$SOURCE_DIR"/*.md "$TARGET_DIR/"
    echo ""
    echo "✓ Agents installed successfully!"
    echo ""
    echo "Next steps:"
    echo "  1. Copy opencode.json.example to ~/.config/opencode/opencode.json"
    echo "  2. Edit it to configure your preferred models"
    echo "  3. Run 'opencode' to start!"
else
    echo "Installation cancelled."
    exit 0
fi
