#!/bin/bash
bash ./build.sh || exit 1
docker push tobiashegemann/alpine-chrome:with-node-14-and-firebase
