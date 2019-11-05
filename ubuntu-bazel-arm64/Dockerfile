FROM arm64v8/ubuntu:xenial
RUN apt update \
#Install Bazel Deps
    && apt install -y build-essential openjdk-8-jdk python3 zip unzip wget

RUN wget https://github.com/bazelbuild/bazel/releases/download/1.0.0/bazel-1.0.0-dist.zip

RUN unzip -d bazel-1.0.0 bazel-1.0.0-dist.zip 

RUN ln -s /usr/bin/python3 /usr/bin/python
RUN cd bazel-1.0.0 \
    && chmod u+w ./* -R \
    && export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-arm64 \
    && EXTRA_BAZEL_ARGS="--host_javabase=@local_jdk//:jdk" ./compile.sh \
    && cp ./output/bazel /usr/bin
