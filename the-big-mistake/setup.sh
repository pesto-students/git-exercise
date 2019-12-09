#!/bin/bash
source ../make-repo.sh

makerepo

touch file1
git add file1
git commit -m "File1"

touch badfile
git add mistakefile
git commit -m "Mistake File"

touch file2
git add file2
git commit -m "File2"

touch file2
git add file2
git commit -m "File3"
