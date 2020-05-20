#!/usr/bin/env bash

. config.sh

for t in $TAGS; do
    docker build --pull -t $REPO:$t -f Dockerfile_$t .
    docker tag $REPO:$t $ORG/$REPO:$t
    if [ $t = $LATEST ]; then
       docker tag $REPO:$t $REPO:latest
       docker tag $REPO:$t $ORG/$REPO:latest
    fi
done
