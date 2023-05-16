#!/bin/bash
bash ./build.sh || exit 1
docker push tobiashegemann/alpine-chrome:with-playwright-and-firebase
