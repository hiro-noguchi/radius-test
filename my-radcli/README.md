


# edit

- radiusサーバのアドレスを設定する

`vim docker/my-radcli-file/radcli.conf`

```

〜〜省略〜〜

authserver        XXX.XXX.XXX.XXX:1812

〜〜省略〜〜

acctserver        XXX.XXX.XXX.XXX:1813

〜〜省略〜〜
```


`vim docker/my-radcli-file/servers`

```
〜〜省略〜〜

XXX.XXX.XXX.XXX                             key
```

- radcliのブランチやタグを変更する場合は、Dockerfileを変更すること

`vim docker/Dockerfile`

```
〜〜省略〜〜

RUN git clone -b performance-test  https://github.com/hiro-noguchi/radcli.git

〜〜省略〜〜
```

- v1.0 : 1000パケット送信、ベース版

`RUN git clone -b v1.0  https://github.com/hiro-noguchi/radcli.git`

- v1.1 : 1000パケット送信、軽量化版

`RUN git clone -b v1.1  https://github.com/hiro-noguchi/radcli.git`

- v1.2 : コマンドライン引数で実行秒数を指定可能　(例)./radexample.c 3600

`RUN git clone -b v1.2  https://github.com/hiro-noguchi/radcli.git`

# build

`cd docker`

`docker build . -t my-radcli:1.2`


# run

`docker run -it my-radcli:1.2 /bin/bash`

`cd /radcli/src/.libs`

- v1.0-v1.1

`./radexample`

- v1.2

`./radexample 3600

実行例

```
# ./radexample 1
start
tv_sec=1592475546  tv_nsec=411403861
2020/06/18 10:19:06.411403861
tv_sec=1592475547  tv_nsec=93449806
2020/06/18 10:19:07.093449806
end
sec:1
tps:1000
success:1000
```

```
# ./radexample 5
start
〜〜省略〜〜
end
sec:5
tps:1200
success:6000
```
