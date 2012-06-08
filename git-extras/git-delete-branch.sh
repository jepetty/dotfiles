#!/usr/bin/env sh

branch=$1
test -z $branch && echo "branch required." 1>&2 && exit 1
git branch -D $branch
git branch -d -r origin/$branch && git push origin :$branch
