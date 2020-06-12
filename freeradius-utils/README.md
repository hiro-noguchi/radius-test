# build

docker build . -t radtest:1.0

# run

docker run -it radtest:1.0 /bin/bash

# test

radtest user1 password1 192.168.244.13 0 key
radtest user2 password2 192.168.244.13 0 key
radtest user3 password3 192.168.244.13 0 key
radtest user4 password4 192.168.244.13 0 key
radtest user5 password5 192.168.244.13 0 key
