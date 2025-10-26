#!/bin/bash

# Branched from latest master
echo '--> # Branched from latest master:'
git checkout master
git pull

# Feautre A
echo '--> # Feature A:'
git checkout -b feature-a

# 1
echo '--> # 1:'
echo "feature-a commit-1" >> log.txt
git commit -am "feature-a commit-1"
git push --set-upstream origin feature-a

# 2
echo '--> # 2:'
echo "feature-a commit-2" >> log.txt
git commit -am "feature-a commit-2"
git push

# 3
echo '--> # 3:'
echo "Oopps" >> log.txt
git commit -am "oops"
git push

# 4
echo '--> # 4:'
echo "Fixed" >> log.txt
git commit -am "Fixed"
git push

# 5
echo '--> # 5:'
echo "Now tests pass too" >> log.txt
git commit -am "Now test pass too"
git push

# Log
echo '--> # Log:'
git log --all --graph --decorate --oneline --simplify-by-decoration