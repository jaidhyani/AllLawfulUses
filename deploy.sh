#!/usr/bin/env bash
set -euo pipefail

# Deploy index.html from main to gh-pages branch
# Usage: ./deploy.sh

SITE_FILES="index.html .nojekyll"

git stash --include-untracked -q 2>/dev/null || true
current_branch=$(git branch --show-current)

git checkout gh-pages -q
for f in $SITE_FILES; do
    git checkout main -- "$f"
done
git add $SITE_FILES

if git diff --cached --quiet; then
    echo "No changes to deploy."
else
    git commit -m "Deploy site"
    git push origin gh-pages -q
    echo "Deployed to gh-pages."
fi

git checkout "$current_branch" -q
git stash pop -q 2>/dev/null || true
