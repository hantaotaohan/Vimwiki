# 安装

## 安装前提

- {% button http://nodejs.org/, Node.js 下载 %}   {% button http://git-scm.com/, Git 下载 %}

## 正式安装Hexo

调出windows下的cmd 或者 shell 或者 bash,输入如下命令:

```bash
npm install -g hexo-cli
```

待安装完毕后,在你需要建立博客的路径下建立博客Blog文件夹

```bash
mkdir YourBlog
```

进入 YourBlog

```bash
cd YourBlog
```

执行Hexo初始化博客命令

```bash
hexo init
```

初始化完毕后,执行安装Hexo命令

```bash
npm install
```

测试启动Hexo看是否启动成功

```bash
hexo server 或者 hexo s #启动本地服务器
```

一般来说如果根据提示在浏览器中输入<span id="yellow"> http://localhost:4000 </span>并成功显示网页.恭喜你可以为你的Hexo配置主题了.

----

# 安装主题 Next

## 下载主题包 Next-Theme

- { button http://theme-next.iissnan.com/, 官方网址 %}
- { button https://github.com/iissnan/hexo-theme-next/releases, 下载最新版 %}

## 应用主题包

下载完毕后,解压缩到YourBlog下的themes文件夹内 , 并修改站点配置文件

打开<span id="blue"> 站点配置文件 </span> ， 站点配置文件在你的YourBlog根目录下,名为_config.yml的文件,在里面找到 theme 字段，并将其值更改为 next

```ini
theme: next
```

## 设置主题包语言

打开<span id="blue"> 站点配置文件 </span> ，将 language 设置成你所需要的语言。建议明确设置你所需要的语言，例如选用简体中文，配置如下：

```ini
language: zh-CN
```

## 添加分类页面

在终端窗口下，定位到 Hexo 站点目录下。使用 hexo new page 新建一个页面，命名为 categories ：

```cmd
cd YourBlog
hexo new page categories
```

待命令结束后会在跟文件夹目录下的public出现刚刚新建的分类文件夹categories,编辑index.md

将页面的 type 设置为 categories ，主题将自动为这个页面显示分类。页面内容如下：

```ini
title: 分类
date: 2014-12-22 12:39:04
type: "categories"
---
```

在菜单中添加链接。编辑 打开<span id="green"> 主题配置文件  </span> ， 添加 categories 到 menu 中，如下:

```ini
menu:
  home: /
  archives: /archives
  categories: /categories
```

修改新建文章的模板信息,增加默认分类:

位置为根目录下的scaffolds文件夹内的post.md

编辑内容如下:

```ini
---
title: {{ title }}
date: {{ date }}
tags:
categories: #新增内容
---
```

## 设置代码块的主题颜色:

NexT 使用 Tomorrow Theme 作为代码高亮，共有5款主题供你选择。 NexT 默认使用的是 白色的 normal 主题，可选的值有 normal，night， night blue， night bright， night eighties：

更改 <span id="green"> 主题配置文件  </span>  highlight_theme 字段，将其值设定成你所喜爱的高亮主题，例如：

```ini
# Code Highlight theme
# Available value: normal | night | night eighties | night blue | night bright
# https://github.com/chriskempson/tomorrow-theme
highlight_theme: normal
```

## 开启打赏功能

持微信打赏和支付宝打赏。 只需要 <span id="green"> 主题配置文件  </span> 中填入 微信 和 支付宝 收款二维码图片地址 即可开启该功能。

```ini
reward_comment: 坚持原创技术分享，您的支持将鼓励我继续创作！
wechatpay: /path/to/wechat-reward-image
alipay: /path/to/alipay-reward-image
```

## 设置每篇文章下显示微信公众号

在每篇文章的末尾显示微信公众号二维码，扫一扫，轻松订阅博客。

在微信公众号平台下载您的二维码，并将它存放于博客source/uploads/目录下。

```ini
# Wechat Subscriber
wechat_subscriber:
  enabled: true
  qcode: /uploads/wechat-qcode.jpg
  description: 欢迎您扫一扫上面的微信公众号，订阅我的博客！
```

# 部署Hexo到你的Github上面

## 如果没有Github

- 自行注册Github 并新建仓库
- 记住仓库地址 如: https://github.com/username/blog.git

## 如果已有Github

### 安装 hexo-deployer-git

```bash
$ npm install hexo-deployer-git --save
```

修改 <span id="blue"> 站点配置文件 </span> 配置

```ini
deploy:
  type: git
  repo: <repository url> #https://github.com/username/blog.git
  branch: master
  message: [message]
```

如果按照以上的配置成功的话,继续执行以下操作部署到Github

```bash
hexo clean
hexo g
hexo d
```

{% note success %}
以后每次更新文章后需要执行 `hexo g -d` 即可同步到Github
{% endnote %}

----

# Hexo 基本命令

| 命令             | 解释                                            |
| :---             | :---                                            |
| hexo init        | 新建网站                                        |
| hexo new         | 新建一篇文章                                    |
| hexo generate    | 生成静态文件                                    |
| hexo generate -d | 文件生成后立即部署网站                          |
| hexo generate -w | 监视文件变动                                    |
| hexo server      | 启动本地服务器                                  |
| hexo server -p   | 重设端口                                        |
| hexo server -s   | 只是用静态文件                                  |
| hexo server -l   | 启动日记记录                                    |
| hexo deploy      | 部署网站                                        |
| hexo deploy -g   | 部署至前预先生成静态文件                        |
| hexo clean       | 清除缓存文件(db.json)和已生成的静态文件(public) |
| hexo list        | 列出网站资料                                    |
| hexo version     | 显示Hexo版本                                    |

----

# 扩展Hexo

## 添加站内搜索功能

- 安装插件

```bash
npm install hexo-generator-searchdb --save
```

- 配置

<span id="green"> 主题配置文件  </span>，查找local_search:

```ini
local_search:
  enable: false # 修改为true
  trigger: auto
  top_n_per_article: 1
```
<span id="blue"> 站点配置文件 </span> ,添加如下内容:

```ini
search:
  path: search.xml
  field: post
  format: html
  limit: 10000
```

## 添加字数统计及阅读时间功能

- 安装插件

```bash
$ npm install hexo-symbols-count-time --save
```

- 配置

<span id="green"> 主题配置文件  </span>，查找local_search:

```ini
symbols_count_time:
  separated_meta: true
  item_text_post: true
  item_text_total: false
  awl: 4
  wpm: 275
```

<span id="blue"> 站点配置文件 </span> ,添加如下内容:

```ini
symbols_count_time:
  symbols: true
  time: true
  total_symbols: true
  total_time: true
```

## 添加文章书写样式

### 文字增加背景色块

- 打开 themes/next/source/css/_custom 下的 custom.styl 文件,添加属性样式：

```css
// 颜色块-黄
span#yellow {
display:inline;
padding:.2em .6em .3em;
font-size:80%;
font-weight:bold;
line-height:1;
color:#fff;
text-align:center;
white-space:nowrap;
vertical-align:baseline;
border-radius:0;
background-color: #f0ad4e;
}
// 颜色块-绿
span#green {
display:inline;
padding:.2em .6em .3em;
font-size:80%;
font-weight:bold;
line-height:1;
color:#fff;
text-align:center;
white-space:nowrap;
vertical-align:baseline;
border-radius:0;
background-color: #5cb85c;
}
// 颜色块-蓝
span#blue {
display:inline;
padding:.2em .6em .3em;
font-size:80%;
font-weight:bold;
line-height:1;
color:#fff;
text-align:center;
white-space:nowrap;
vertical-align:baseline;
border-radius:0;
background-color: #2780e3;
}
// 颜色块-紫
span#purple {
display:inline;
padding:.2em .6em .3em;
font-size:80%;
font-weight:bold;
line-height:1;
color:#fff;
text-align:center;
white-space:nowrap;
vertical-align:baseline;
border-radius:0;
background-color: #9954bb;
}
```

- 使用

在你需要编辑的文章地方。放置如下代码：

```html
<span id="blue"> 站点配置文件 </span>
<span id="purple"> 主题配置文件 </span>
<span id="yellow"> 站点配置文件 </span>
<span id="green"> 主题配置文件 </span>
```

### 添加下载按钮

```html
{% button 链接, 文字 %}
```

### 设置引用区块颜色

- 使用方式

```html
{% note class_name %}
Content (md partial supported)
{% endnote %}
```

** 其中，class_name 可以是以下列表中的一个值: **

- default
- primary
- success
- info
- warning
- danger

```html
如:
{% note danger %}
区块内的文字
{% endnote %}
```

# 重装之后需要安装的源

```bash
npm install hexo-deployer-git --save #部署github插件
npm install hexo-abbrlink --save #优化链接插件
npm install hexo-symbols-count-time --save #文章字数统计阅读时间插件
npm install hexo-generator-sitemap --save  #站点地图
npm install hexo-generator-baidu-sitemap --save #百度站点地图
npm install hexo-generator-searchdb --save #搜索插件
```
