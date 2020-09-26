#!/bin/bash

PORT=""
SETTINGS=""

#######color code########
RED="31m"      # Error message
GREEN="32m"    # Success message
YELLOW="33m"   # Warning message
BLUE="36m"     # Info message

colorEcho ${BLUE} "Installing jq"

bash <(curl -s https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64)

cp jq /usr/bin


colorEcho ${BLUE} "Installing V2Ray"

bash <(curl -s https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)

colorEcho ${BLUE} "starting V2Ray"

systemctl start v2ray

PORT="$(cat /etc/v2ray/config.json | jq .inbounds | .[0] | .port)"
SETTINGS="$(cat /etc/v2ray/config.json | jq .inbounds | .[0] | .port | .settings)"
#UUID="$(cat /etc/v2ray/config.json | jq .inbounds | .[0] | .port | .settings | .[0] | .id)"
#ALTER_ID="$(cat /etc/v2ray/config.json | jq .inbounds | .[0] | .port | .settings | .[0] | .alterId)"

colorEcho ${BLUE} "${PORT}"
colorEcho ${BLUE} "${SETTINGS}"
