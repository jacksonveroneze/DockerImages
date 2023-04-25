#!/bin/bash

apt update && \
apt upgrade -y && \
apt install -y --no-install-recommends locales tzdata curl wget && \
apt clean && apt autoclean && apt autoremove && \
rm -rf /var/lib/apt/lists/*

echo $TZ > /etc/timezone && \
rm /etc/localtime && \
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
locale-gen pt_BR.UTF-8 && \
dpkg-reconfigure -f noninteractive locales && \
update-locale LANG=pt_BR.UTF-8 LANGUAGE="pt_BR:pt:en" && \
dpkg-reconfigure -f noninteractive tzdata

groupadd --gid 1000 $USERNAME \
    && useradd -r --uid 1000 --gid 1000 -m $USERNAME