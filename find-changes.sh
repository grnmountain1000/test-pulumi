#!/bin/sh
aws s3 ls
echo $GIT_STRING
git init
git clone  --mirror  $GIT_STRING
#ls -ltR
git diff-tree --no-commit-id --name-only -r $(git rev-parse --verify HEAD)


