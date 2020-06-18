FROM ubuntu:16.04

RUN apt update -y && apt install -y git vim autoconf libtool automake nettle-dev libgnutls28-dev abi-compliance-checker

RUN git clone https://github.com/hiro-noguchi/radcli.git
RUN git clone https://github.com/hiro-noguchi/radius-test.git

RUN ln -s /radcli/lib/.libs/libradcli.so.4 /lib/x86_64-linux-gnu/

RUN ln -s /radius-test/my-radcli/my-radcli-file /usr/local/etc/radcli

RUN cd /radcli

RUN ./autogen.sh

RUN make
