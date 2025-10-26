#!/bin/bash

# Feature A
echo '--> # Checkout feature-a (behind master):'
git checkout feature-a
# Feature A will be behind master intentionally
# This will create a merge conflict feature-a -> master
git status

# 1
echo '--> # 1:'
echo feature-a New requirement >> log.txt
git commit -am "feature-a New requirement"
git push

# Log
echo '--> # Log:'
git log --all --graph --decorate --oneline --simplify-by-decoration