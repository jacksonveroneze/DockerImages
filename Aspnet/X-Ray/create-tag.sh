#!/bin/bash

#Alpine
docker tag jacksonveroneze/aspnet:7.0-alpine jacksonveroneze/aspnet:7.0-alpine-xray-$RELEASE

#Ubuntu
docker tag jacksonveroneze/aspnet:7.0-ubuntu jacksonveroneze/aspnet:7.0-ubuntu-xray-$RELEASE

#Debian
docker tag jacksonveroneze/aspnet:7.0-debian jacksonveroneze/aspnet:7.0-debian-xray-$RELEASE