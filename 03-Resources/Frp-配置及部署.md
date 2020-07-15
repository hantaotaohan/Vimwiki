# frp官方中文文档
<br>
{% button https://github.com/fatedier/frp/blob/master/README_zh.md , 点我查看 %} 
<br>
里面写得已经非常详细

这里将介绍如何在没有域名情况下，使用IP访问到内网

我有了一台的云服务器A（公网IP：aaa.bbb.ccc.ddd）

有一台在公司的服务器B（内网IP：192.168.1.33）

# frp 程序官方下载 
<br>
{% button https://github.com/fatedier/frp/releases , 下载地址 %}
<br>
- frp_x.xx.x_linux_amd64.tar.gz = 服务器版本
- frp_x.22.x_linux_386.tar.gz = 客户端版本
- frp_0.22.0_windows_386.zip = WIN32版本
- frp_0.22.0_windows_amd64.zip = WIN64版本

在两台服务器上分别下载对应的frp工具包

# ubuntu部署:

## 部署在服务器A

```bash
cd ~
cd ..
mkdir soft
cd soft
wget https://github.com/fatedier/frp/releases/download/v0.20.0/frp_0.20.0_linux_amd64.tar.gz
cd frp_0.20.0_linux_amd64/ ls
frpc  frpc_full.ini  frpc.ini  frps  frps_full.ini  frps.ini  LICENSE  nohup.out
```

## 在服务器A，只要修改frps.ini文件
```ini
[common]
bind_port = 7000
```
开启运行

前端开启，关闭就会失效
```bash
./frps -c ./frps.ini
```
后端开启
```bash
nohup ./frps -c ./frps.ini &
```
如果想关闭
```bash
ps -ef|grep "your_command" #（查找运行该命令的进程）
kill -9 your_command_pid #(根据进程号关闭程序)
```

{% note danger %} 
这里需要特别注意ubuntu下的frp目录必须赋予权限不然bash报错 
{% endnote %}



## 在服务器B，需要修改frpc.ini文件
```ini
# frpc.ini
[common]
server_addr = aaa.bbb.ccc.ddd
server_port = 7000

[ssh]
type = tcp
local_ip = 127.0.0.1
local_port = 22
remote_port = 6000

[3389]
type = tcp
local_ip = 127.0.0.1
local_port = 3389
remote_port = 5000
```

这样在服务器B上映射好了22和3389端口

---

# 开启方法

## ubuntu开启方法

开启运行

前端开启，关闭就会失效
```bash
./frpc -c ./frpc.ini
```
后端开启
```bash
nohup ./frpc -c ./frpc.ini
```


## windows开启方法

开启运行

前端开启，关闭就会失效

当前目录打开cmd或者powershell
```cmd
frpc -c frpc.ini
```
后端开启

`自行百度开机计划任务`


现在使用aaa.bbb.ccc.ddd:6000即可访问到内网服务器的web应用

如访问不到，检查是否设置的安全组，我使用的服务器是腾讯云的

在安全组设置加入配置文件添加7000 - 6000 - 5000 端口即可解决访问不到的情况

