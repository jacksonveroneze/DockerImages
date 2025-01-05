#!/bin/bash

#Alpine
docker build -f ./Alpine/Dockerfile -t jacksonveroneze/aspnet:9.0-alpine .

#Debian
docker build -f ./Debian/Dockerfile -t jacksonveroneze/aspnet:9.0-debian .