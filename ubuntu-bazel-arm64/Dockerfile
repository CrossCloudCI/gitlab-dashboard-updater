FROM arm64v8/ubuntu:disco

RUN apt update \
    && apt install -y ca-certificates

# Install qemu static
RUN apt update && apt -y install qemu-user qemu-user-static

#Install Ruby Deps

RUN apt install -y wget patch bzip2 gawk patch zlib1g-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison libffi-dev libgmp-dev libreadline6-dev libssl-dev


#Install Bazel Deps
RUN apt install -y git openjdk-8-jdk pkg-config zip zlib1g-dev unzip autoconf automake libtool python3-pip python3-numpy swig python3-dev software-properties-common

RUN pip3 install wheel


# Install gcc-7
RUN apt install -y g++-7 \
    && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 1000 \
    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 1000 \
    && update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-7 1000 \
    && update-alternatives --config gcc \
    && update-alternatives --config g++ \
    && update-alternatives --config gcov



RUN wget https://github.com/bazelbuild/bazel/releases/download/0.25.0/bazel-0.25.0-dist.zip

RUN unzip -d bazel-0.25.0 bazel-0.25.0-dist.zip 

WORKDIR bazel-0.25.0

RUN chmod u+w ./* -R 

RUN ln -s /usr/bin/python3 /usr/bin/python
RUN export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-arm64 \
    && EXTRA_BAZEL_ARGS="--host_javabase=@local_jdk//:jdk" ./compile.sh

RUN cp /bazel-0.25.0/output/bazel /usr/bin

WORKDIR /
