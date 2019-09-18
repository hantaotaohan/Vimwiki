# Github使用方式

## 创建仓库
```
git init
```

## 添加进仓库
```
git add README.md
```

## 提交版本
```
git commit -m "first commit"
```

## 链接远程仓库
```
git remote add origin https://github.com/hantaotaohan/TaoTao.git
```

## 推送同步本地代码到Github
```
git push -u origin master
```

# Git 基本操作

## 安装Git
```
https://git-scm.com/downloads
```

## 配置Git
```
git config --global user.name "Your Name"
git config --global user.email "email@example.com"
```

## 创建版本库
```
git init
```

## 添加到仓库
```
git add file
```

## 添加所有文件到仓库
```
git add .
```

## 将仓库修改版本提交到仓库
```
git commit -m "messages"
```

## 查看仓库状态
```
git status
```

## 查看提交历史
```
git log
```

## 查看提交命令历史
```
git reflog
```

## 恢复上一个版本
```
git reset --hard HEAD^
```

## 恢复某一个版本
```
git reset --hard 版本号

```