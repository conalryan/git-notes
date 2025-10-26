#!/bin/bash

# Branched from latest master
echo '--> Branch from latest master:'
git checkout master
git pull

# Feautre C
echo '--> # Feautre C:'
git checkout -b feature-c

# 1
echo '--> # 1'
echo "feature-c commit-1" >> log.txt
git commit -am "feature-c commit-1"
git push --set-upstream origin feature-c

# 2
echo '--> # 2'
echo "feature-c commit-2" >> log.txt
git commit -am "feature-c commit-2"
git push

echo '--> # 3'
echo "feature-c fix commit-1" >> log.txt
git commit -am "feature-c fix commit-1"
git push

# 2
echo '--> # 4'
echo "feature-c fix commit-2" >> log.txt
git commit -am "feature-c fix commit-2"
git push

# Log
echo '--> # Log'
git log --all --graph --decorate --oneline --simplify-by-decoration