#!/usr/bin/env zsh
set -euo pipefail
[[ -n "${ZSH_VERSION:-}" ]] || { echo "zsh only" >&2; exit 1 }
git fetch origin
git pull --rebase origin main
git push -u origin main
git status -sb
