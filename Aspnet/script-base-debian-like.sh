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

groupadd --gid $USER_GID $USERNAME \
    && useradd -r --uid $USER_UID --gid $USER_GID -m $USERNAME