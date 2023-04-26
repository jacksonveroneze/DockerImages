#!/bin/bash

mkdir -p /tmp/xray_output/

curl https://s3.dualstack.us-east-2.amazonaws.com/aws-xray-assets.us-east-2/xray-daemon/aws-xray-daemon-linux-3.x.zip -o /tmp/xray_output/xray.zip && \
unzip /tmp/xray_output/xray.zip -d /tmp/xray_output && \
mv /tmp/xray_output/xray /usr/bin/xray && \
rm -rf /tmp/xray_output