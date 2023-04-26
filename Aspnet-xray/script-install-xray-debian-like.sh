#!/bin/bash

curl https://s3.us-east-2.amazonaws.com/aws-xray-assets.us-east-2/xray-daemon/aws-xray-daemon-3.x.deb -o /tmp/xray.deb && \
dpkg -i /tmp/xray.deb && \
rm /tmp/xray.deb