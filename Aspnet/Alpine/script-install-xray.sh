#!/bin/bash

curl https://s3.dualstack.us-east-2.amazonaws.com/aws-xray-assets.us-east-2/xray-daemon/aws-xray-daemon-linux-3.x.zip -o xray.zip && \
unzip ./xray.zip && \
mv xray /usr/bin/xray && \
rm xray.zip