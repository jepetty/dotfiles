#!/usr/bin/env sh

branch=$1
test -z $branch && echo "branch required." 1>&2 && exit 1

git push origin origin:refs/heads/$branch
git fetch origin
git checkout --track -b $branch origin/$branch
git pull
