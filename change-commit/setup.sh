#!/bin/bash
source ../make-repo.sh

makerepo

touch file.txt

git add file.txt
git commit -m "Initial commit"

echo "This is some important code" > file.txt

git add file.txt

git commit -m "add important code"

git checkout -b quickfix HEAD~1

echo "This is a very quick fix" > fix.txt

git add fix.txt

git commit -m "Make quick fix - should be moved to master"