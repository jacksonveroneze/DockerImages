#!/bin/bash

apt update && \
apt upgrade -y && \
apt install -y --no-install-recommends locales curl tzdata && \
apt clean && apt autoclean && apt autoremove && \
rm -rf /var/lib/apt/lists/*

echo $TZ > /etc/timezone && \
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime  && \
dpkg-reconfigure -f noninteractive tzdata

echo "locales locales/locales_to_be_generated multiselect pt_BR.UTF-8 UTF-8" | debconf-set-selections  && \
rm /etc/locale.gen  && \
dpkg-reconfigure --frontend noninteractive locales

groupadd --gid 1000 $USERNAME && \
useradd -r --uid 1000 --gid 1000 -m $USERNAME