#!/usr/bin/env bash
set -euo pipefail

SKILL_DIR="$HOME/.qoderworkcn/skills/cross-page-state-sync"
SKILL_URL="https://raw.githubusercontent.com/xhydsb/cross-page-state-sync/master/SKILL.md"

echo "Installing cross-page-state-sync skill..."

mkdir -p "$SKILL_DIR"
echo "  Directory: $SKILL_DIR"

echo "  Downloading SKILL.md..."
if command -v curl &>/dev/null; then
    curl -sL -o "$SKILL_DIR/SKILL.md" "$SKILL_URL"
elif command -v wget &>/dev/null; then
    wget -q -O "$SKILL_DIR/SKILL.md" "$SKILL_URL"
else
    echo "[ERROR] Neither curl nor wget found. Please install one of them."
    exit 1
fi

if [ -f "$SKILL_DIR/SKILL.md" ]; then
    echo "[OK] cross-page-state-sync skill installed successfully!"
    echo "     Location: $SKILL_DIR/SKILL.md"
else
    echo "[ERROR] Installation failed. SKILL.md not found after download."
    exit 1
fi
