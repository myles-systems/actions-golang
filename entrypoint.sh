#!/usr/bin/env bash

set -e

APP_DIR="/go/src/github.com/${GITHUB_REPOSITORY}/"

mkdir -p ${APP_DIR} && cp -r ./ ${APP_DIR} && cd ${APP_DIR}

if [[ "$1" == "fmt" ]]; then
  go fmt ./...
fi

if [[ "$1" == "lint" ]]; then
  golint ./...
fi
