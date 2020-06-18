


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


# build

`cd docker`

`docker build . -t my-radcli:1.0`


# run

`docker run -it my-radcli:1.0 /bin/bash`

`cd /radcli/src/.libs`

`./radexample`
