# uwsgi

## 安装uwsgi
1. 安装
```bash
pip3 install uwsgi
```
2. 进入django项目
```bash
cd /home/用户名/django项目目录/
```
3. 测试uwsgi运行
```bash
uwsgi --http 0.0.0.0:8000 --file 项目目录包含wsgi.py的目录/wsgi.py --static-map=/static=static
```
## 使用uwsgi配置文件启动django项目
1. 使用ctrl+c 取消uwsgi启动

2. 在django项目目录下建立uwsgi.ini文件,文件内容如下
    ```ini
    # uwsig使用配置文件启动
    [uwsgi]
    # 项目目录
    chdir=/www/mysite1/
    # 指定项目的application
    module=mysite1.mysite1.wsgi:application
    # 指定sock的文件路径
    socket=/www/mysite1/mysite1.sock
    # 进程个数
    workers=5
    pidfile=/www/mysite1/script/uwsgi.pid
    # 指定IP端口
    http=0.0.0.0:8001
    # 指定静态文件
    static-map=/static=/www/mysite1/static
    # 启动uwsgi的用户名和用户组
    uid=root
    gid=root
    # 启用主进程
    master=true
    # 自动移除unix Socket和pid文件当服务停止的时候
    vacuum=true
    # 序列化接受的内容，如果可能的话
    thunder-lock=true
    # 启用线程
    enable-threads=true
    # 设置自中断时间
    harakiri=30
    # 设置缓冲
    post-buffering=8192
    # 设置日志目录
    daemonize=/www/mysite1/script/uwsgi.log
    wsgi-file = /www/mysite1/mysite1/wsgi.py
    ```
3. 启动uwsgi . 注意必须切换到django项目目录下
```bash
uwsgi --ini uwsgi.ini
```
4. 如果关闭项目,使用命令
```bash
uwsgi --stop uwsgi.pid
```

# Nginx

## 安装Nginx

1. ubuntu安装nginx
```bash
apt install nginx
```
2. 配置nginx
```bash
vim /etc/nginx/nginx.conf
```
3. 在http{}标签中添加如下内容
    ```nginx
    server {
        listen  80;
        server_name 192.168.2.234;
        location /media {
            alias /home/taotao/works/media;
                        }
        location /static {
            alias /home/taotao/works/static;
                        }
        location / {
            uwsgi_pass 192.168.2.234:8000;
            include uwsgi_params;
                }
            }
    ```

# 启动生产环境
1. 进入到django项目目录后
```bash
uwsgi --ini nginx.ini
```
2. 启动nginx
```bash
sudo /etc/init.d/nginx start
```
3. OK 已经正式启动了

# 其他
1. nginx其他命令
```bash
sudo /etc/init.d/nginx start
sudo /etc/init.d/nginx restart
sudo /etc/init.d/nginx stop
sudo /etc/init.d/nginx reload
```

2. 如果启动不了nginx,检查ps,如果有在执行id直接kill掉
```bash
ps -ef |grep nginx
```