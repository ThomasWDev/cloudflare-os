#!/usr/bin/env bash
# Sync ThomasWDev/cloudflare-os main from cloudflare/cloudflare-os (ff-only).
set -euo pipefail
cd "$(dirname "$0")/.."

git remote get-url upstream >/dev/null 2>&1 || \
  git remote add upstream https://github.com/cloudflare/cloudflare-os.git

git fetch upstream
git checkout main
if git merge --ff-only upstream/main; then
  echo "OK: main fast-forwarded to upstream/main"
  echo "Push when ready: git push origin main"
else
  echo "STOP: cannot ff-only. Open a PR: upstream/main → main on this fork." >&2
  exit 2
fi
