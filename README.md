# 使用说明

开启服务

```shell
mkdocs serve -a 0.0.0.0:8080
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
