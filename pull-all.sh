#!/usr/bin/env bash

. config.sh

for t in latest $TAGS; do
    docker pull $ORG/$REPO:$t
    docker tag $ORG/$REPO:$t $REPO:$t
done
