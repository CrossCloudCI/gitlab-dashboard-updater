FROM arm64v8/ubuntu:xenial

RUN apt update \
    && apt install -y ca-certificates

# Install qemu static
RUN apt update && apt -y install qemu-user qemu-user-static

#Install Ruby Deps

RUN apt install -y patch bzip2 gawk patch zlib1g-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison libffi-dev libgmp-dev libreadline6-dev libssl-dev