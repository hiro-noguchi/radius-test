FROM ubuntu:16.04

WORKDIR /

RUN apt update -y && apt install -y git vim autoconf libtool automake nettle-dev libgnutls28-dev abi-compliance-checker

RUN git clone -b performance-test  https://github.com/hiro-noguchi/radcli.git

RUN ln -s /radcli/lib/.libs/libradcli.so.4 /lib/x86_64-linux-gnu/

RUN mkdir /usr/local/etc/radcli

WORKDIR radcli

RUN /bin/bash autogen.sh

RUN make

ADD my-radcli-file/dictionary /usr/local/etc/radcli/
ADD my-radcli-file/radcli.conf /usr/local/etc/radcli/
ADD my-radcli-file/servers /usr/local/etc/radcli/

