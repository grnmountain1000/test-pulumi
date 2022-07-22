#!/bin/sh
aws s3 ls
echo $GIT_STRING
git init
#git clone  --mirror  $GIT_STRING
git clone   --depth 2  $GIT_STRING

# move into the repo
cd pulumi-sandbox


#git rev-parse origin/main

#git rev-parse --verify HEAD
git rev-parse --verify $GIT_TOKEN

git diff-tree --no-commit-id --name-only -r $(git rev-parse --verify HEAD)


