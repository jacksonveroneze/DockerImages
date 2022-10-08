#!/bin/bash

#Alpine
docker build -f ./Alpine/Dockerfile-6-Alpine -t jacksonveroneze/aspnet:6.0-alpine .

#Ubuntu
docker build -f ./Ubuntu/Dockerfile-6-Ubuntu -t jacksonveroneze/aspnet:6.0-ubuntu .
docker build -f ./Ubuntu/Dockerfile-7-Ubuntu -t jacksonveroneze/aspnet:7.0-ubuntu .