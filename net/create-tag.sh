#!/bin/bash

RELEASE="${RELEASE=latest}"

#Debian
docker tag jacksonveroneze/net:9.0-debian jacksonveroneze/net:9.0-debian-$RELEASE