#!/bin/sh -l

pipreqs --force --savepath $INPUT_REQUIREMENT_PATH $INPUT_PROJECT_PATH

set -e
sh -c "ls"

git config --global --add safe.directory /github/workspace
git config --global user.name '${GITHUB_ACTOR}'
git config --global user.email '${GITHUB_ACTOR}@users.noreply.github.com'
git add -A
git commit -m "Updated $INPUT_PROJECT_NAME requirements file"
git push -u origin HEAD
