#!/usr/bin/env bash
# Link the global Claude Code instructions into ~/.claude.
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
src="$repo_dir/claude/CLAUDE.md"
target="$HOME/.claude/CLAUDE.md"

mkdir -p "$HOME/.claude"
if [ -e "$target" ] && [ ! -L "$target" ]; then
  mv "$target" "$target.bak"
  echo "Backed up existing $target to $target.bak"
fi
ln -sfn "$src" "$target"
echo "Linked $target -> $src"
