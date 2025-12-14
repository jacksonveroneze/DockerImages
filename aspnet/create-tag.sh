#!/bin/bash

RELEASE="${RELEASE=latest}"

#Alpine
docker tag jacksonveroneze/aspnet:10.0-alpine jacksonveroneze/aspnet:10.0-alpine-$RELEASE

#Ubuntu
docker tag jacksonveroneze/aspnet:10.0-ubuntu jacksonveroneze/aspnet:10.0-ubuntu-$RELEASE