#!/bin/sh

xhost +local:docker

docker rm -f meet-antlr && docker rmi meet-antlr

docker compose up -d
