# nginx
nginx

Docker イメージのビルド
# docker build -f ./Dockerfile -t contos:c71nginx01 --no-cache=true .

Docker イメージの確認
# docker images

Docker イメージから Nginx コンテナを起動
# docker run -d --privileged --name web0002 -h web0002 centos:c71nginx01 /sbin/init

Bash の起動
# docker exec -i -t web0002 /bin/bash

Nginx のステータス確認
[root@web0002 /]# systemctl status nginx | grep active

コンテナのIPアドレス確認
[root@web0002 /]# ip a | grep inet

コンテンツ読み込み確認
# curl http://172.17.0.56/index.html
