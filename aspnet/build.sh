#!/bin/bash

#Alpine
docker build -f ./Alpine/Dockerfile -t jacksonveroneze/aspnet:10.0-alpine .

#Ubuntu
docker build -f ./Ubuntu/Dockerfile -t jacksonveroneze/aspnet:10.0-ubuntu .
docker build -f ./Ubuntu/Dockerfile-Chiseled-Extra -t jacksonveroneze/aspnet:10.0-ubuntu-noble-chiseled-extra .