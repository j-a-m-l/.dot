#!/bin/sh

# https://gist.github.com/octocat/0831f3fbd83ac4d46451#file-git-author-rewrite-sh

git filter-branch --env-filter '
OLD_EMAIL="TODO@TODO"
CORRECT_NAME="To Do"
CORRECT_EMAIL="TODO@TODO"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
