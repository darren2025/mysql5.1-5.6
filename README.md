# 一、使用说明:

## 1.基本使用:

```linux
#下载文件
wget https://raw.githubusercontent.com/darren2025/mysql5.1-5.6/master/install_mysql.sh
#给予权限
chmod +x install_mysql.sh
#执行:
sh install_mysql.sh
```

执行后除了第二个设置密码的,请填写密码,其他都默认y

## 2.开启自启

如果需要加入开机启动项:请接着往下看

### centos6+版本

执行以下

```linux
chkconfig --add mysqld
chkconfig --level 35 mysqld on
```

### centos7+

```linux
systemctl enable nginx #设置开机启动
```

## 3.添加到防火墙允许外网访问

```
iptables -I INPUT -p tcp --dport 3306 -j ACCEPT
service iptables save 【固定格式：保存配置】
service iptables restart 【固定格式：重启防火墙服务】
```

