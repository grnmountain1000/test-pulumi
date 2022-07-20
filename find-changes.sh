#!/bin/sh

git init
git clone https://github.com/eplexity/pulumi-sandbox.git
ls -ltR
git fetch origin  
git diff-tree --no-commit-id --name-only -r $(git rev-parse --verify HEAD)

