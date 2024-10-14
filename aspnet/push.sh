#!/bin/bash

RELEASE="${RELEASE=latest}"

#Alpine
docker push jacksonveroneze/aspnet:8.0-alpine-$RELEASE

#Debian
docker push jacksonveroneze/aspnet:8.0-debian-$RELEASE