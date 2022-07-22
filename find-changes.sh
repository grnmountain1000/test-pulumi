#!/bin/sh
aws s3 ls
echo $GIT_STRING
git init
#git clone  --mirror  $GIT_STRING
git clone   --depth 2  $GIT_STRING

# check repo clone location
#   we want to be in the repo where the .git directory is
#   change into the repo
cd test-pulumi


#git rev-parse origin/main

#git rev-parse --verify HEAD
#git rev-parse --verify $GIT_TOKEN

echo "The changed files this commit are: "
git diff-tree --no-commit-id --name-only -r $(git rev-parse --verify HEAD)


