#!/bin/sh -l

python3 /create-requirement.py > "$INPUT_REQUIREMENT_PATH"

set -e
sh -c "ls"

sh -c "git config --global user.name '${GITHUB_ACTOR}' \
      && git config --global user.email '${GITHUB_ACTOR}@users.noreply.github.com' \
      && git add -A && git commit -m 'updated requirement file' \
      && git push -u origin HEAD"