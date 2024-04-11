# 使用说明

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


# search
`path:*.sh mkdocs serve config addr`


exclude_docs: |
  navigation_template.txt
  SUMMARY.md
ref: https://github.com/airtai/faststream/blob/63a4453f79c8963fccdb523a092a28a4f4ce0893/docs/mkdocs.yml#L115


toc bar length min
https://github.com/realvitya/fortimanager-template-sync/blob/219eab6faa061bf9eb710dcc87bda62191b40b9f/mkdocs.yml