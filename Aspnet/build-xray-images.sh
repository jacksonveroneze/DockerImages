#!/bin/bash

#Alpine
docker build -f ./Alpine/Dockerfile-6-Alpine-xray -t jacksonveroneze/aspnet:6.0-alpine-xray ./Alpine/

#Ubuntu
docker build -f ./Ubuntu/Dockerfile-6-Ubuntu-xray -t jacksonveroneze/aspnet:6.0-ubuntu-xray ./Ubuntu/
docker build -f ./Ubuntu/Dockerfile-7-Ubuntu-xray -t jacksonveroneze/aspnet:7.0-ubuntu-xray ./Ubuntu/