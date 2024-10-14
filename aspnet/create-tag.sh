#!/bin/bash

RELEASE="${RELEASE=latest}"

#Alpine
docker tag jacksonveroneze/aspnet:8.0-alpine jacksonveroneze/aspnet:8.0-alpine-$RELEASE

#Debian
docker tag jacksonveroneze/aspnet:8.0-debian jacksonveroneze/aspnet:8.0-debian-$RELEASE