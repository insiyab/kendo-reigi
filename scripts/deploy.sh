#!/bin/bash

# If on master, deploy site to kendo-reigi.surge.sh

branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')

if [ "$branch" == "master" ]; then
    echo 'Commit on master: Deploying to kendo-reigi.surge.sh.'
    surge public kendo-reigi.surge.sh
fi

RESULT=$?
[ $RESULT -ne 0 ] && exit 1
exit 0