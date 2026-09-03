#!/usr/bin/env bash
# Copies Matt Pocock's writing-for-agents reference verbatim into this skill.
# Run from anywhere. Re-run to pick up upstream edits. Never hand-edit the copies.
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="$HERE/../references/writing-for-agents"
BASE="https://raw.githubusercontent.com/mattpocock/skills/main/skills/productivity/writing-for-agents"

mkdir -p "$DEST"
for f in SKILL.md SKILL-MECHANICS.md; do
  curl -fsSL "$BASE/$f" -o "$DEST/$f.tmp"
  # Refuse an empty or HTML response (GitHub 404 pages are HTML).
  if [ ! -s "$DEST/$f.tmp" ] || grep -qi "<html" "$DEST/$f.tmp"; then
    echo "sync failed: $f" >&2; rm -f "$DEST/$f.tmp"; exit 1
  fi
  mv "$DEST/$f.tmp" "$DEST/$f"
  echo "synced $f ($(wc -l < "$DEST/$f") lines)"
done

{
  echo "source: $BASE"
  echo "synced: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "sha256:"
  (cd "$DEST" && shasum -a 256 SKILL.md SKILL-MECHANICS.md)
} > "$DEST/SOURCE.txt"
echo "wrote SOURCE.txt"
