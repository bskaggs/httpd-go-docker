#!/bin/bash
TAG=${1:-bskaggs/httpd}
docker run --rm -v "$PWD":/usr/src/httpd -w /usr/src/httpd -e CGO_ENABLED=0 golang bash -c " go get -d -v; go build -v" && docker build -t "$TAG" .
