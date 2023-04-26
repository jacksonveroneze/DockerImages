#!/bin/bash

#Alpine
docker push jacksonveroneze/aspnet:7.0-alpine-xray-$RELEASE

#Ubuntu
docker push jacksonveroneze/aspnet:7.0-ubuntu-xray-$RELEASE

#Debian
docker push jacksonveroneze/aspnet:7.0-debian-xray-$RELEASE