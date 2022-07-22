#!/bin/sh
#aws s3 ls
echo $GIT_STRING
git init

git clone   --depth 2  $GIT_STRING

# check repo clone location
#   we want to be in the repo where the .git directory is
#   change into the repo

cd test-pulumi


echo "The changed files this commit are: "
git diff-tree --no-commit-id --name-only -r $(git rev-parse --verify HEAD)


