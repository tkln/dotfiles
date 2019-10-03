#!/bin/sh

git update-index --skip-worktree $0
GIT_WORK_TREE=$HOME git checkout -f
git update-index --no-skip-worktree $0
