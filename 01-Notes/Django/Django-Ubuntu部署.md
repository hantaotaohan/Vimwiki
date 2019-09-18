# Django - Ubuntu部署


## 部署前修改的准备

- 修改django的settings.py

```python
ALLOWED_HOSTS = ['IP','域名']
```

-  删除app/migrations/下以数字开头的数据库日志文件

---

## 正式部署

- 进入服务器获取权限
```bash
sudo -i
```

- 服务器系统更新
```bash
sudo apt-get update
sudo apt-get dist-upgrade
```

- 安装Pip3
```bash
sudo apt-get install python3-pip
```

- 更新pip3
```bash
sudo pip3 install --upgrade pip
```

>如果pip3报错 可以用一下方式解决

**找到 pip3的执行文件**

`cd /usr/bin/pip3`

**原代码：**
```python
from pip import main
if __name__ == ‘__main__‘:
    sys.exit(main())
```

**修改为：**
```python
from pip import __main__    # 将main改成__main__
if __name__ == ‘__main__‘:
    sys.exit(__main__._main())  # 将main()改成 _main()
```

**保存后再升级pip3：**
```bash
sudo pip3 install --upgrade pip
```

---

- 安装Apache
```bash
sudo apt-get install apache2
```

- 安装mod-wsgi
```bash
sudo apt-get install libapache2-mod-wsgi-py3
```

- 安装django
```bash
pip3 install django
```

- 放置django工程

`将Django工程放在/var/www/下`

- 配置apache2启动加载wsgi模块

- 修改/etc/apache2/apache2.conf ，在最后增加一行

`LoadModule wsgi_module /usr/lib/apache2/modules/mod_wsgi.so`

- 重启Apach2
```bash
sudo service apache2 restart
```

- 新建Apache2配置文件
```bash
sudo vi /etc/apache2/sites-available/你的配置文件.conf
```

- 修改如下内容
```ini
<VirtualHost *:80>
    ServerName 你服务器的IP
    ServerAdmin hantaotaohan@sina.com
    DocumentRoot /var/www/BlackAzoth

    Alias /media/ /var/www/BlackAzoth/media/
    Alias /static/ /var/www/BlackAzoth/static/

    <Directory /var/www/BlackAzoth/media>
        Require all granted
    </Directory>

    <Directory /var/www/BlackAzoth/static>
        Require all granted
    </Directory>

    WSGIScriptAlias / /var/www/BlackAzoth/BlackAzoth/wsgi.py

    <Directory /var/www/BlackAzoth/BlackAzoth>
    <Files wsgi.py>
        Require all granted
    </Files>
    </Directory>
</VirtualHost>
```

- 修改Django的wsgi.py文件
```python
    import os
    from os.path import join,dirname,abspath
    PROJECT_DIR = dirname(dirname(abspath(__file__)))

    import sys
    sys.path.insert(0,PROJECT_DIR)
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "你的项目.settings")

    from django.core.wsgi import get_wsgi_application
    application = get_wsgi_application()
```

----

- 拷贝静态文件目录在setting设置

- 添加如下配置

`STATIC_ROOT = os.path.join(BASE_DIR, 'static')`

- 执行收集静态文件
```bash
python manage.py collectstatic
```
----
- 启用配置文件生效
```bash
sudo a2ensite mysite.conf
```
- 屏蔽默认配置文件
```bash
sudo a2dissite 000-default.conf
```
- 重新读取apache2配置文件
```bash
service apache2 reload
```
- 重启apache2服务
```bash
service apache2 restart
```

**每次你修改Django工程文件之后，都要restart一下，它才会生效**
