#!/bin/sh
aws s3 ls
git init
git clone https://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:github.com/eplexity/pulumi-sandbox.git
ls -ltR
git fetch origin  
git diff-tree --no-commit-id --name-only -r $(git rev-parse --verify HEAD)

