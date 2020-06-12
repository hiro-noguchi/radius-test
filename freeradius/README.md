# build

docker build . -t freeradius:1.0

# run

docker run -d -it -p 1812:1812/udp -v /home/ncom/radius-test/freeradius/freeradius-volume:/etc/freeradius/3.0 freeradius:1.0
