#!/bin/bash
docker build -t tobiashegemann/alpine-chrome:with-node-14-and-firebase . || exit 1

NODE_VERSION=$(docker container run --rm --entrypoint '' delude/alpine-chrome:with-node-14-and-firebase node --version)
if [[ $NODE_VERSION = v14* ]]
then
	echo "nodejs version: $NODE_VERSION"
else
	echo "Container does not contain a node of version 14, instead $NODE_VERSION"
	exit 1
fi

echo "npm version:"
docker container run --rm --entrypoint '' delude/alpine-chrome:with-node-14-and-firebase npm --version || exit 1

echo "pnpm version:"
docker container run --rm --entrypoint '' delude/alpine-chrome:with-node-14-and-firebase pnpm --version || exit 1

echo "yarn version:"
docker container run --rm --entrypoint '' delude/alpine-chrome:with-node-14-and-firebase yarn --version || exit 1

echo "firebase tools version:"
docker container run --rm --entrypoint '' delude/alpine-chrome:with-node-14-and-firebase firebase --version || exit 1
