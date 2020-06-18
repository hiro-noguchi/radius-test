# edit

- 認証情報を変更する場合

`vim docker/freeradius-file/authorize`

```
username00000 Cleartext-Password := "password00000"
username00001 Cleartext-Password := "password00001"
username00002 Cleartext-Password := "password00002"
〜〜省略〜〜
```

- 認証キーやアクセスもとネットワークを変更する場合

`vim docker/freeradius-file/clients.conf`

```
client localnet {
        ipaddr = 0.0.0.0/0
        secret = key
}
〜〜省略〜〜
```

# build

`cd docker`

`docker build . -t freeradius:1.0`

# run

`docker run -d -it -p 1812:1812/udp freeradius:1.0`

