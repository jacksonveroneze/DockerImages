#!/bin/bash

RELEASE="${RELEASE=latest}"

#Alpine
docker push jacksonveroneze/aspnet:10.0-alpine-$RELEASE

#Ubuntu
docker push jacksonveroneze/aspnet:10.0-ubuntu-$RELEASE