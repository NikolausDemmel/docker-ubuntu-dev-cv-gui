#!/usr/bin/env bash

. config.sh

for t in latest $TAGS; do
    docker push $ORG/$REPO:$t
done
