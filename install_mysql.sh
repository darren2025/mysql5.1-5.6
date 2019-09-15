#!/bin/bash
#卸载本地mysql
yum -y remove mysql mysql-server mysql-libs
#删除本地的mysql残留
rm -fr /var/lib/mysql/*
# 下载远程的包
wget "https://raw.githubusercontent.com/darren2025/mysql5.1-5.6/master/mysql-community-client-5.6.45-2.el6.i686.rpm"
wget "https://raw.githubusercontent.com/darren2025/mysql5.1-5.6/master/mysql-community-common-5.6.45-2.el6.i686.rpm"
wget "https://raw.githubusercontent.com/darren2025/mysql5.1-5.6/master/mysql-community-libs-5.6.45-2.el6.i686.rpm"
wget "https://raw.githubusercontent.com/darren2025/mysql5.1-5.6/master/mysql-community-server-5.6.45-2.el6.i686.rpm"
# 安装
rpm -Uvh mysql-community-common-5.6.45-2.el6.i686.rpm
# 安装
rpm -Uvh mysql-community-libs-5.6.45-2.el6.i686.rpm
# 安装
rpm -Uvh mysql-community-client-5.6.45-2.el6.i686.rpm
# 安装
rpm -Uvh mysql-community-server-5.6.45-2.el6.i686.rpm
# 启动msyql
service mysqld start

# 初始化数据库
mysql_secure_installation



