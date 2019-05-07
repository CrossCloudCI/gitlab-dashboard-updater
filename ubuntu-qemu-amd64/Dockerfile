FROM ubuntu:disco

RUN apt update \
    && apt install -y ca-certificates


#Install Ruby Deps

RUN apt install -y wget patch bzip2 gawk patch zlib1g-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison libffi-dev libgmp-dev libreadline6-dev libssl-dev


# Install qemu static
RUN apt install -y make python3-pip python3-numpy python3-dev pkg-config libglib2.0-dev zlib1g-dev libpixman-1-dev flex


RUN ln -s /usr/bin/python3 /usr/bin/python
COPY qemu-3.1.0.sh /
RUN ./qemu-3.1.0.sh
RUN cp /opt/qemu/bin/qemu-x86_64 /usr/bin/
RUN ln -s /usr/bin/qemu-x86_64 /usr/bin/qemu-x86_64-static

