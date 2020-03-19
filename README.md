shell脚本，自动搭建shadowsocks

# CentOS 7使用方法：
安装wget组件和解压缩工具  
``` Linux Commands
yum -y install wget && yum install -y zip unzip 
```

获取脚本文件  
``` Linux Commands
wget --no-check-certificate -O autoShadowsocks.sh https://raw.githubusercontent.com/App1990/CentOS7-autoShadowsocks/master/autoShadowsocks.sh 
```
获取脚本文件（Multiple）  
``` Linux Commands
wget --no-check-certificate -O autoShadowsocks.sh https://raw.githubusercontent.com/App1990/CentOS7-autoShadowsocks/master/autoShadowsocksMultiple.sh 
```

将文件标记为可执行脚本  
``` Linux Commands
chmod +x autoShadowsocks.sh 
```

执行脚本  
``` Linux Commands
./autoShadowsocks.sh 
```


查看shadowsocks服务状态 
``` Linux Commands
systemctl status ssserver -l
```
