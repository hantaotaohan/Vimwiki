- 下载Mysql社区版

```
https://dev.mysql.com/downloads/file/?id=480557
```

- 配置Mysql的ini文件,如果没有则新建mysql.ini

```ini
[mysqld]

# 设置3306端口
port=3306

# 设置mysql的安装目录
basedir=D:\Mysql

# 设置mysql数据库的数据的存放目录
datadir=D:\Mysql\data

# 允许最大连接数
max_connections=200

# 允许连接失败的次数。这是为了防止有人从该主机试图攻击数据库系统
max_connect_errors=10

# 服务端使用的字符集默认为UTF8MB4
character-set-server=UTF8MB4

# 创建新表时将使用的默认存储引擎
default-storage-engine=INNODB

# 默认使用“mysql_native_password”插件认证
default_authentication_plugin=mysql_native_password

[mysql]

# 设置mysql客户端默认字符集
default-character-set=utf8

[client]

# 设置mysql客户端连接服务端时默认使用的端口
port=3306

# 设置mysql客户端默认编码
default-character-set=UTF8MB4
```

- 初始化Mysql数据库

```sql
mysqld --initialize
```

- 查看密码

```sql
在Mysql的安装目录下 ~/Mysql/data/*.err文件内查找密码
```

- 安装Mysql服务

```sql
mysqld -install
```

- 启动Mysql服务

```sql
net start mysql
```

- 登陆Mysql

```sql
mysql -u root -p初始密码
```

- 修改密码

```sql
mysql> alter user 'root'@'localhost' identified by 'youpassword';
```

- 刷新权限

```sql
flush privileges;
```
