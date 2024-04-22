---
title: 记录一次 Linux Mint 的安装记录及配置
date: 2024-04-22
---

## 安装系统

### 制作启动盘

### 安装过程

[Windows 下安装 Ubuntu 双系统](https://kayzhang.github.io/2014/09/install-ubuntu-with-windows/)

因为分区挂载问题，windows启动项被抹掉，只好拿windows启动盘修复启动。然后更新grub

```shell
sudo update-grub
# sudo grub-install /dev/sda
sudo os-prober
/dev/sda1@/EFI/Microsoft/Boot/bootmgfw.efi:Windows Boot Manager:Windows:efi
```

## 系统配置

- sudo 免密

[Linux 中不输入密码运行 sudo 命令的方法-腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/1720819)


```shell
sudo cp /etc/sudoers{,.backup_$(date +%Y%m%d)}


james@LAPTOP:/mnt$ sudo vim /etc/sudoers.d/james

james ALL=(ALL) NOPASSWD:ALL
```

```shell
sudo apt install python3-pip
```

### 网络环境

#### nginx

```shell
sudo apt install nginx
```

```shell
james@LAPTOP:/usr/sbin$ ls -lh nginx 
-rwxr-xr-x 1 root root 1.2M  5月 31  2023 nginx
```

```nginx
server {
    listen 80;
    server_name localhost;

    location / {
        #proxy_pass http://mkdocs:8000;
        root /home/james/shared/www/notes/site;
        index index.html;
    }
}
```

```nginx
server {
   listen 80;
   server_name example.com;

   root /home/james;
   index index.html index.htm;

   location / {
       try_files $uri $uri/ =404;
   }
}

```

```shell
nginx: [emerg] "user" directive is duplicate in /etc/nginx/nginx.conf:2

sudo chown -R www-data:www-data /home/james
```

### 网络传输

#### Samba

```shell
sudo apt install samba
```

安装Samba服务：首先，确保你的Linux系统上已安装Samba软件包。你可以使用系统包管理器来安装它。例如，在Ubuntu或Debian上，可以使用以下命令安装：`sudo apt update`  
`sudo apt install samba`配置Samba共享：编辑Samba配置文件，添加你想要共享的目录和访问权限。配置文件通常位于`/etc/samba/smb.conf`。你可以使用文本编辑器打开它，并添加如下条目：

```json
[shared_folder]  
   comment = Shared Folder  
   path = /path/to/your/shared/folder  
   browseable = yes  
   read only = no  
   create mask = 0777  
   directory mask = 0777


```

这里的shared_folder是共享的名称，/path/to/your/shared/folder是你想要共享的目录的路径。read 
only = 
no选项允许其他设备写入共享目录。创建Samba用户：你需要创建一个Samba用户，并将其添加到Samba用户数据库中。你可以使用以下命令创建一个Samba用户：

sudo smbpasswd -a username

/home/james/shared/

sudo smbpasswd -a james

这里的username是你要创建的Samba用户的用户名。系统将提示你输入密码。重启Samba服务：完成配置后，重启Samba服务以使更改生效：

`sudo systemctl restart smbd`

#### Termius

[Download Termius for Linux](https://termius.com/download/linux)


### Docker

```shell
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
```

#### docker-compose

```shell
sudo apt install docker-compose
```


## 安装应用及配置

### 输入法

#### fcitx5

Linux 下安装 fcitx5 与 Rime

[https://aimerneige.com/zh/post/install-fcitx5-with-rime-on-linux/](https://aimerneige.com/zh/post/install-fcitx5-with-rime-on-linux/) 

fcitx5-rime配置指南

[https://muted64.github.io/2021/11/13/fcitx5-rime%E9%85%8D%E7%BD%AE%E6%8C%87%E5%8D%97/](https://muted64.github.io/2021/11/13/fcitx5-rime%E9%85%8D%E7%BD%AE%E6%8C%87%E5%8D%97/) 

[**Fcitx5-Material-Color**](https://github.com/hosxy/Fcitx5-Material-Color)

```shell
sudo apt install fcitx5
sudo apt install fcitx5-rime
fcitx5-material-color

sudo apt install fcitx5 fcitx5-rime fcitx5-material-color
```

### 浏览器

#### chrome

[https://www.google.com/chrome/?platform=linux](https://www.google.com/chrome/?platform=linux)

```shell
sudo apt-get -f install # 依赖
sudo dpkg -i google.deb
```

`seahorse`命令新建密钥环，密码为空

### 剪切板

#### CopyQ


[适用于 Linux 的 10 个最佳开源剪贴板管理器 &#8211; Digitalixy.com](https://digitalixy.com/linux/539393.html)

[CopyQ](https://github.com/hluk/CopyQ)

```shell
sudo add-apt-repository ppa:hluk/copyq
sudo apt update
sudo apt install copyq
```



### 编辑类

#### texlive

**配置的环境变量**

```shell
vim ~/.bashrc
```

```shell
# 自己为texlive配置的环境变量
PATH=/usr/local/texlive/2024/bin/x86_64-linux:$PATH; export PATH
MANPATH=/usr/local/texlive/2024/texmf-dist/doc/man:$MANPATH; export MANPATH
INFOPATH=/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH; export INFOPATH
```

```shell
 source ~/.bashrc
```


#### pandoc

```shell
sudo dpkg -i pandoc-3.1.13-1-amd64.deb 
```

#### VsCode

```shell
sudo dpkg -i code_1.88.1-1712771838_amd64.deb 
```

##### Visual Studio Code

[Running Visual Studio Code on Linux](https://code.visualstudio.com/docs/setup/linux)

Installing the .deb package will automatically install the apt repository and signing key to enable auto-updating using the system's package manager. Alternatively, the repository and key can also be installed manually with the following script:

```shell
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
```

Then update the package cache and install the package using:

```shell
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders
```

##### 使用 Vscode 配置 LaTeX

[使用 Vscode 配置 LaTeX | LJGUO](https://ljguo1020.github.io/2022/11/11/LaTeX-vscode/)

https://blog.csdn.net/sakiiiiiiii/article/details/97439829

```json
"latex-workshop.latex.autoBuild.run": "never",
    "latex-workshop.showContextMenu": true,
    "latex-workshop.intellisense.package.enabled": true,
    "latex-workshop.message.error.show": false,
    "latex-workshop.message.warning.show": false,
    "latex-workshop.latex.tools": [
        {
            "name": "xelatex",
            "command": "xelatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOCFILE%"
            ]
        },
        {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOCFILE%"
            ]
        },
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "-outdir=%OUTDIR%",
                "%DOCFILE%"
            ]
        },
        {
            "name": "bibtex",
            "command": "bibtex",
            "args": [
                "%DOCFILE%"
            ]
        }
    ],
    "latex-workshop.latex.recipes": [
        {
            "name": "XeLaTeX",
            "tools": [
                "xelatex"
            ]
        },
        {
            "name": "PDFLaTeX",
            "tools": [
                "pdflatex"
            ]
        },
        {
            "name": "BibTeX",
            "tools": [
                "bibtex"
            ]
        },
        {
            "name": "LaTeXmk",
            "tools": [
                "latexmk"
            ]
        },
        {
            "name": "xelatex -> bibtex -> xelatex*2",
            "tools": [
                "xelatex",
                "bibtex",
                "xelatex",
                "xelatex"
            ]
        },
        {
            "name": "pdflatex -> bibtex -> pdflatex*2",
            "tools": [
                "pdflatex",
                "bibtex",
                "pdflatex",
                "pdflatex"
            ]
        },
    ],
    "latex-workshop.latex.clean.fileTypes": [
        "*.aux",
        "*.bbl",
        "*.blg",
        "*.idx",
        "*.ind",
        "*.lof",
        "*.lot",
        "*.out",
        "*.toc",
        "*.acn",
        "*.acr",
        "*.alg",
        "*.glg",
        "*.glo",
        "*.gls",
        "*.ist",
        "*.fls",
        "*.log",
        "*.fdb_latexmk"
    ],
    "latex-workshop.latex.autoClean.run": "onFailed",
    "latex-workshop.latex.recipe.default": "lastUsed",
    "latex-workshop.view.pdf.internal.synctex.keybinding": "double-click",
```


#### MkDocs

#### [Obsidian](../writer/obsidian.md)



```shell
sudo dpkg -i obsidian_1.5.12_amd64.deb 
```

#### marktext

```shell
wget https://github.com/marktext/marktext/releases/download/v0.17.1/marktext-amd64.deb -O marktext.deb
sudo dpkg -i marktext.deb 
```