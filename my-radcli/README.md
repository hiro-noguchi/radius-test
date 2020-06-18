


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

# build

`cd docker`

`docker build . -t my-radcli:1.0`


# run

`docker run -it my-radcli:1.0 /bin/bash`

`cd /radcli/src/.libs`

`./radexample`
