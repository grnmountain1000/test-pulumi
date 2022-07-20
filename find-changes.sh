#!/bin/sh
aws s3 ls
echo $GIT_STRING
git init
git clone $GIT_STRING
#ls -ltR
#git fetch origin  
#git fetch 
#git diff-tree --no-commit-id --name-only -r $(git rev-parse --verify HEAD)

