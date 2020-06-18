# build

`cd docker`

`docker build . -t radtest:1.0`

# run

`docker run -it radtest:1.0 /bin/bash`

# test

```
radtest username00001 password00001 192.168.244.13 0 key
radtest username00002 password00002 192.168.244.13 0 key
radtest username00003 password00003 192.168.244.13 0 key
radtest username00004 password00004 192.168.244.13 0 key
radtest username00005 password00005 192.168.244.13 0 key
```
