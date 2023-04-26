#!/bin/bash

apk update && \
apk upgrade && \
apk add --no-cache musl musl-utils musl-locales musl-locales-lang icu-data-full icu-libs curl tzdata && \
rm -rf /var/cache/apk/*

echo $TZ > /etc/timezone && \
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime

echo "export LC_ALL=$LC_ALL" >> /etc/profile.d/locale.sh && \
sed -i "s/LANG=./LANG=$LANG/" /etc/profile.d/locale.sh

adduser -D $USERNAME  && \
mkdir -p /etc/sudoers.d  && \
echo "$USERNAME ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USERNAME  &&\
chmod 0440 /etc/sudoers.d/$USERNAME