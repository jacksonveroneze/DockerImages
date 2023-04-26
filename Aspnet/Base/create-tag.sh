#!/bin/bash

#Alpine
docker tag jacksonveroneze/aspnet:7.0-alpine jacksonveroneze/aspnet:7.0-alpine-$RELEASE

#Ubuntu
docker tag jacksonveroneze/aspnet:7.0-ubuntu jacksonveroneze/aspnet:7.0-ubuntu-$RELEASE

#Debian
docker tag jacksonveroneze/aspnet:7.0-debian jacksonveroneze/aspnet:7.0-debian-$RELEASE