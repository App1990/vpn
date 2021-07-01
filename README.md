shell脚本，自动搭建v2ray

# CentOS 7使用方法：
一键安装 
``` Linux Commands
bash <(curl -s https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh) 

bash <(curl -sL https://raw.githubusercontent.com/hijkpw/scripts/master/goV2.sh)

bash <(curl -sL https://s.hijk.art/v2ray.sh)
```

启动v2ray服务 
``` Linux Commands
systemctl start v2ray
```

查看v2ray服务状态 
``` Linux Commands
systemctl status v2ray -l
```
