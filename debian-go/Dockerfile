FROM golang:latest

#Install Ruby Deps

RUN apt update && apt install -y patch bzip2 gawk patch zlib1g-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison libffi-dev libgmp-dev libreadline6-dev && wget http://ftp.us.debian.org/debian/pool/main/o/openssl1.0/libssl1.0.2_1.0.2u-1~deb9u1_amd64.deb && apt install -f ././libssl1.0.2*.deb