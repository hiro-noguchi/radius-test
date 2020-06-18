FROM ubuntu:18.04

RUN apt update -y && apt install -y freeradius

ADD freeradius-file/clients.conf /etc/freeradius/3.0/

ADD freeradius-file/authorize /etc/freeradius/3.0/mods-config/files/authorize

CMD ["freeradius" ,"-f"]
