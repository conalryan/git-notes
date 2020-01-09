#!/bin/bash

# Branched from latest master
echo '--> Checkout latest master:'
git checkout master
git pull

# Create log file
echo '--> Create log file:'
echo Init > log.txt

# Push to repo
echo '--> Push to repo:'
git add .
git commit -m "Init log file"
git push

git tag v0.0
git push origin --tags

# Log
echo '--> Log:'
git log --all --graph --decorate --oneline --simplify-by-decoration