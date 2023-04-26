#!/bin/bash

#Alpine
docker push jacksonveroneze/aspnet:7.0-alpine-$RELEASE

#Ubuntu
docker push jacksonveroneze/aspnet:7.0-ubuntu-$RELEASE

#Debian
docker push jacksonveroneze/aspnet:7.0-debian-$RELEASE