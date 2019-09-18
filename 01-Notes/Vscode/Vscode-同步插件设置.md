# VSCode 同步设置扩展插件

## 准备工作:

- VSCode
- Github
- 安装Sync插件

## Sync快捷键:

- 上传 = `SHIFT + ALT + U`
- 下载 = `SHIFT + ALT + D`

### Step1

- 安装插件 Sync

### Step2

- 进入github
- Settings在左侧Developer Settings
- Personal access tokens

### Step3

- 点击按钮Generate new token 新增一个token

- Token description 命名自己的名称

- 选取 gist 打上对勾

- 点击Generate token按钮

- 记住自己生成的token值

### Step4

- 回到VSCode配置将token配置到本地

- `SHIFT + ALT + U` 在弹窗里输入token回车生成syncsummary.txt文件

### Step5

- 设置同步下载配置

- `SHIFT + ALT + D` 在弹窗里输入你的gist值 稍后便可同步成功

### Step6

- `CTRL + P or F1` 弹出输入 sync , 即可重新配置你的其他token来同步