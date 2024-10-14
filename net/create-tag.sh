#!/bin/bash

RELEASE="${RELEASE=latest}"

#Debian
docker tag jacksonveroneze/net:8.0-debian jacksonveroneze/net:8.0-debian-$RELEASE