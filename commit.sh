#!/bin/bash

# 1. Check if README.md exists, if not, create it with a 0
if [ ! -f README.md ]; then
    echo "0" > README.md
fi

# 2. Read the current number, add 1, and overwrite the file
CURRENT_VAL=$(cat README.md)
NEW_VAL=$((CURRENT_VAL + 1))
echo "$NEW_VAL" > README.md

# 3. Git operations
git add README.md
git commit -m "Update count to $NEW_VAL"
git push origin main
