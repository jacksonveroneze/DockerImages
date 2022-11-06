#!/bin/bash

apk update && \
apk upgrade && \
apk add --no-cache musl-locales musl-locales-lang icu-data-full icu-libs curl tzdata && \
rm -rf /var/cache/apk/*

echo $TZ > /etc/timezone && \
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime

adduser -D $USERNAME  && \
mkdir -p /etc/sudoers.d  && \
echo "$USERNAME ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USERNAME  &&\
chmod 0440 /etc/sudoers.d/$USERNAME