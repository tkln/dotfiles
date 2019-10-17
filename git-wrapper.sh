#!/bin/sh

NO_CHECKOUT="git-wrapper.sh deploy.sh add.sh .gitignore"

git update-index --skip-worktree $NO_CHECKOUT

case "$(basename $0)" in
deploy.sh)
    GIT_WORK_TREE=$HOME git checkout -f
    ;;
add.sh)
    GIT_WORK_TREE=$HOME git add "$@"
    ;;
*)
    echo "unknown"
    ;;
esac

git update-index --no-skip-worktree $NO_CHECKOUT
