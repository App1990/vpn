#!/bin/bash

#install Shadowsocks on CentOS 7

echo "Installing Shadowsocks..................................................."

CONFIG_FILE=/etc/shadowsocks.json
SS_SERVICE_FILE=/etc/systemd/system/ssserver.service
SS_PASSWORD=qwer1234
SS_PORT=8388
#SS_IP=`ip route get 1|awk '{print $NF;exit}'`


echo "root can install soft"
#yum install -y python-setuptools && easy_install pip
sudo yum -y install epel-release && sudo yum -y install python-pip

pip install shadowsocks

# creat shadowsocks config

cat << EOF | tee ${CONFIG_FILE}
{
    "server":"0.0.0.0",
    "server_port":${SS_PORT},
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"${SS_PASSWORD}",
    "timeout":600,
    "method":"aes-256-cfb",
    "fast_open": false
}
EOF


# set shadowssocks.service start with system

echo "create ${SS_SERVICE_FILE} && set ssserver.service start with system......"

cat << EOF | tee ${SS_SERVICE_FILE}
[Unit]
Description=ssserver

[Service]
TimeoutStartSec=0
ExecStart=/usr/bin/ssserver -c ${CONFIG_FILE}

[Install]
WantedBy=multi-user.target
EOF

echo "start ssserver.service .................................................."

systemctl start ssserver
systemctl enable ssserver

echo "status ssserver.service ................................................."

systemctl status ssserver -l

echo "ALL Done................................................................."
