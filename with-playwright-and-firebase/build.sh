#!/bin/bash
docker build -t tobiashegemann/alpine-chrome:with-playwright-and-firebase . || exit 1

echo "npm version:"
docker container run --rm --entrypoint '' tobiashegemann/alpine-chrome:with-playwright-and-firebase npm --version || exit 1

echo "pnpm version:"
docker container run --rm --entrypoint '' tobiashegemann/alpine-chrome:with-playwright-and-firebase pnpm --version || exit 1

echo "yarn version:"
docker container run --rm --entrypoint '' tobiashegemann/alpine-chrome:with-playwright-and-firebase yarn --version || exit 1

echo "firebase tools version:"
docker container run --rm --entrypoint '' tobiashegemann/alpine-chrome:with-playwright-and-firebase firebase --version || exit 1
