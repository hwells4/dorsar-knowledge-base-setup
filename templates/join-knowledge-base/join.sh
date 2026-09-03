#!/usr/bin/env bash
# Links every skill in this knowledge base into the home skill folders (Mac/Linux).
# Safe to re-run. Creates links only outside the synced folder.
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_ROOT="$(cd "$HERE/.." && pwd)"          # <kb>/.agents/skills
KB="$(cd "$SKILLS_ROOT/../.." && pwd)"          # <kb>
echo "knowledge base: $KB"

for skill in "$SKILLS_ROOT"/*/; do
  name="$(basename "$skill")"
  for dir in "$HOME/.claude/skills" "$HOME/.agents/skills" "$HOME/.codex/skills"; do
    mkdir -p "$dir"
    target="$dir/$name"
    if [ -e "$target" ] && [ ! -L "$target" ]; then
      echo "skipped $target: a real directory is already there"; continue
    fi
    ln -sfn "${skill%/}" "$target"
    echo "linked  $target"
  done
done

echo
echo "Pin the folder so every file is on disk: in Finder, right-click"
echo "  $KB"
echo "and choose 'Always Keep on This Device'. Then restart Claude Code."
