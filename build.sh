#!/usr/bin/env bash

find "${PWD}" -type d -mindepth 1 -not -path '*/\.*' -print0 |
while IFS= read -r -d '' line; do
    VERSION=$(basename "$line")
    TAG="gatsbylabs/node-signals:$VERSION"

    echo ""
    echo "Building $VERSION"
    docker build -t "$TAG" "$VERSION"
    echo "Verifying $VERSION"
    NODE=$(docker run --entrypoint "node" "$TAG" -v)
    NPM=$(docker run --entrypoint "npm" "$TAG" -v)
    echo "Node: $NODE"
    echo "Npm: $NPM"
    echo "Pusing $VERSION"
    docker push "$TAG"
done
