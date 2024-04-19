# 使用说明

## 数据路径
- 笔记本[windows]: `D:\github\MyRep\notes`


docker run -it --name mkdocs --rm -v ./:/docs -p 58000:8000 --workdir /docs mdos:v1.0 serve -a 0.0.0.0:8000
docker run --rm -it --name mkdocs -p 8000:8000 -v ${PWD}/docs:/docs mdos:v1.0

https://blog.csdn.net/geol200709/article/details/83413123

`docker run -it --rm -v ~/docs:/docs squidfunk/mkdocs-material new my-project`

`docker run -it --name mkdocs --rm -v ~/docs:/docs -p 58000:8000 --workdir /docs/my-project squidfunk/mkdocs-material serve -a 0.0.0.0:8000`

docker run -it --rm -v ${PWD}:/docs mdos:v1.0 new .
docker run -it --name mkdocs --rm -v ${PWD}:/docs -p 58000:8000 --workdir /docs mdos:v1.0 serve -a 0.0.0.0:8000

winpty docker run -it --rm -v /d/github/MyRep/notes:/docs mdos:v1.0 new .
winpty docker run -it --name mkdocs --rm -v /d/github/MyRep/notes:/docs -p 58000:8000 --workdir /docs mdos:v1.0 serve -a 0.0.0.0:8000


$absolutePath = Convert-Path .
winpty docker run -it --name mkdocs --rm -v ${absolutePath}:/docs -p 58000:8000 --workdir /docs mdos:v1.0 serve -a 0.0.0.0:8000

`Convert-Path .` 获取windows的绝对路径

PS C:\Users\admin> Convert-Path .
C:\Users\admin
PS C:\Users\admin>

D:\github\MyRep\notes
D:\github\MyRep\notes\site

D:/github/MyRep/notes

- powershell 要用绝对路径
docker run -it --rm -v D:\github\MyRep\notes:/docs mdos:v1.0 new .
docker run -it --name mkdocs --rm -v D:\github\MyRep\notes:/docs -p 58000:8000 --workdir /docs mdos:v1.0 serve -a 0.0.0.0:8000


docker run -it --name mkdocs --rm -v D:/github/MyRep/notes:/docs -p 8000:8000 --workdir /docs mdos:v1.0 serve
docker run -it --name mkdocs --rm -v D:\github\MyRep\notes:/docs -p 8000:8000 --workdir /docs mdos:v1.0 serve


开启服务

```shell
mkdocs serve -a 0.0.0.0:8080
mkdocs serve -f docs-mk/fr/mkdocs.yml
mkdocs serve --dev-addr 0.0.0.0:8008
mkdocs serve --dev-addr=0.0.0.0:3000 --livereload
mkdocs serve --config-file mkdocs.local.yml
mkdocs serve --livereload --config-file=latest.yaml --dev-addr=0.0.0.0:6600
```

---

- [Dockerfile]([Docker Dockerfile | 菜鸟教程](https://www.runoob.com/docker/docker-dockerfile.html))

```dockerfile
FROM squidfunk/mkdocs-material:9

COPY ./docs/requirements.txt /docs/
RUN pip install \
    --no-cache-dir \
    --requirement ./requirements.txt

ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
```

之后设计参考：https://kgraphql.io/

# record

- nav
- path

## MkDocs使用笔记

### 资料

[Content tabs - Material for MkDocs](https://squidfunk.github.io/mkdocs-material/reference/content-tabs/#embedded-content-unordered-list)

[Mkdocs Material使用记录 - shafish.cn](https://shafish.cn/blog/mkdocs/) 中文版

[Mkdocs+GithubPages - CCnocc Blog](https://zjuccnocc.github.io/BlogWriteup/Mkdocs%E4%BD%BF%E7%94%A8Writeup/#nav) 中文配置注释

[博客插件 - Material for MkDocs](https://squidfunk.github.io/mkdocs-material/plugins/blog/)

[Material for MkDocs 安装配置记录]([Material for MkDocs安装配置记录 | MasterMao's Blog](https://www.mastermao.cn/2023/Material%20for%20MkDocs%E5%AE%89%E8%A3%85%E9%85%8D%E7%BD%AE%E8%AE%B0%E5%BD%95/))

使用此设置可以更改帖子的日期格式。该插件使用[babel](https://pypi.org/project/Babel/)以配置的[站点语言](https://squidfunk.github.io/mkdocs-material/setup/changing-the-language/#site-language)呈现日期。您可以使用[babel](https://pypi.org/project/Babel/)的[模式语法](https://babel.pocoo.org/en/latest/dates.html#pattern-syntax)或以下简码：

[2024 年 1 月 31 日星期一](https://squidfunk.github.io/mkdocs-material/plugins/blog/#config.post_date_format-monday-january-31-2024)

其它资料

https://github.com/krahets/hello-algo.git

# search

`path:*.sh mkdocs serve config addr`

exclude_docs: |
  navigation_template.txt
  SUMMARY.md
ref: https://github.com/airtai/faststream/blob/63a4453f79c8963fccdb523a092a28a4f4ce0893/docs/mkdocs.yml#L115

toc bar length min
https://github.com/realvitya/fortimanager-template-sync/blob/219eab6faa061bf9eb710dcc87bda62191b40b9f/mkdocs.yml

```
Receiving objects: 100% (69398/69398), 276.31 MiB | 1.75 MiB/s, done.
Resolving deltas: 100% (41604/41604), done. 
Updating files: 100% (4138/4138), done.        
```