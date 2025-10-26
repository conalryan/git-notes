#!/bin/bash

# Not Branched from latest master
echo '--> # Not Branched from latest master:'
git checkout master
# Status - Local master will be behind remote master itentionally
# This will create a merge conflict feature-b -> master
git status

# Feature B
echo '--> # Feature B:'
git checkout -b feature-b

# 1
echo '--> # 1:'
echo "feature-b Generated classes" >> log.txt
git commit -am "feature-b Generated classes"
git push --set-upstream origin feature-b

# 2
echo '--> # 2:'
echo "feature-b Integrated classes" >> log.txt
git commit -am "feature-b Integrated classes"
git push

# Log
echo '--> # Log:'
git log --all --graph --decorate --oneline --simplify-by-decoration