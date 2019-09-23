#!/bin/bash

moment=$(date "+%Y-%m-%d--%H-%M-%S")
git tag  "$moment"

current_branch=$(git symbolic-ref --short -q HEAD)

if [ "$current_branch" == "master" ]; then
        :
else
        git tag "$current_branch"
fi

argument=$1
if [[ -n $argument ]]; then
        git tag "$argument"
fi

git push origin --tags
