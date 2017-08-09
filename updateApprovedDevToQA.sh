#!/usr/bin/env bash


git_hash=$(git rev-parse HEAD)
git checkout QA
git commit -m "$git_hash"
git push