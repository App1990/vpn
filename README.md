shell脚本，自动搭建v2ray

# CentOS 7使用方法：
安装wget组件和解压缩工具 
``` Linux Commands
yum -y install wget && yum install -y zip unzip 
```

获取脚本文件 
``` Linux Commands
wget --no-check-certificate -O vpn.sh https://raw.githubusercontent.com/App1990/vpn/master/v2ray.sh 
```

将文件标记为可执行脚本 
``` Linux Commands
chmod +x vpn.sh 
```

执行脚本 
``` Linux Commands
./vpn.sh 
```

启动v2ray服务 
``` Linux Commands
systemctl start v2ray
```

查看v2ray服务状态 
``` Linux Commands
systemctl status v2ray -l
```
