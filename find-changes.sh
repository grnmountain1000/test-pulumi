#!/bin/sh
aws s3 ls
printenv GIT_TOKEN
git init
git clone https://{$GIT_TOKEN}:github.com/eplexity/pulumi-sandbox.git
ls -ltR
##git fetch origin  
##git diff-tree --no-commit-id --name-only -r $(git rev-parse --verify HEAD)

