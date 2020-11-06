FROM buildpack-deps:stretch

ARG VERSION=v3.4.0
ARG FILENAME=helm-${VERSION}-linux-amd64.tar.gz
ARG KUBECTL=v1.18.10

WORKDIR /

RUN curl -L https://get.helm.sh/${FILENAME} | tar zxv -C /tmp
RUN mv /tmp/linux-amd64/helm /usr/local/bin/
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTL/bin/linux/amd64/kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

ADD entrypoint.sh /helm/entrypoint.sh

CMD ["/bin/sh"]
