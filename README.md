# 注意升级前记得备份数据库

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

### 3.选项(启用外网访问)

#### 1.添加到防火墙允许外网访问

```
iptables -I INPUT -p tcp --dport 3306 -j ACCEPT
service iptables save 【固定格式：保存配置】
service iptables restart 【固定格式：重启防火墙服务】
```

#### 2.设置外网访问的用户

进入mysql,然后执行mysql指令

```mysql
update mysql.user set host = '%' where host='127.0.0.1';
```

