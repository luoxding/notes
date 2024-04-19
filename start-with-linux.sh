echo "启动dev服务"

# mkdocs serve -a "127.0.0.1:5000"
# sudo docker run -it --name mkdocs --rm -v ~/docs:/docs -p 58000:8000 --workdir /docs/my-project mdcos:v1.0 serve -a 0.0.0.0:8000
# mkdocs serve --config-file=mkdocs_local.yml --dev-addr=127.0.0.1:8000
# docker-compose up -d

docker run -it --name mkdocs --rm -v D:\github\MyRep\notes:/docs -p 8000:8000 --workdir /docs mdos:v1.0 build -f local.mkdocs.yml