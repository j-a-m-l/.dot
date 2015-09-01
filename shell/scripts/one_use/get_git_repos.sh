#!/bin/bash

REPO_PATH=$1
REPO_LIST=$2

while read REPO; do
	REPO_NAME=${REPO##*/}
	git clone "$REPO" "$REPO_PATH/$REPO_NAME"
done < $REPO_LIST
