#!/usr/bin/env zsh
set -euo pipefail

[[ -n "${ZSH_VERSION:-}" ]] || { echo "zsh only" >&2; exit 1 }

BAND="${1:-zona}"
ROOT="$PWD/$BAND"

mkdir -p "$ROOT"/{members,sound,shows,releases}
cat > "$ROOT/README.md" <<EOF
# $BAND

sound: mix-authoritative, no pauses
ethos: fun > logic
status: coming soon
EOF

date +%F > "$ROOT/releases/0001.txt"
echo "🎶 $BAND initialized at: $ROOT"
