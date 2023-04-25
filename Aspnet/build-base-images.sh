#!/bin/bash

#Alpine
docker build -f ./Alpine/Dockerfile-7 -t jacksonveroneze/aspnet:7.0-alpine .

#Ubuntu
docker build -f ./Ubuntu/Dockerfile-7 -t jacksonveroneze/aspnet:7.0-ubuntu .

#Debian
docker build -f ./Debian/Dockerfile-7 -t jacksonveroneze/aspnet:7.0-debian .