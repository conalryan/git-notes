#! /bin/bash

# Reset to latest
git checkout master
git pull

# Delete feature-a
git push origin --delete feature-a
git branch -D feature-a

# Delete feature-b
git push origin --delete feature-b
git branch -D feature-b

# Delete feature-c
git push origin --delete feature-c
git branch -D feature-c

# Recreate log
rm ./log.txt
echo Init > log.txt

# Push
git add .
git commit -m "[RESET]"
git push
