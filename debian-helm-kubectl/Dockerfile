FROM buildpack-deps:stretch

ARG VERSION=v2.14.3
ARG FILENAME=helm-${VERSION}-linux-amd64.tar.gz
ARG KUBECTL=v1.16.2

WORKDIR /

RUN curl -L http://storage.googleapis.com/kubernetes-helm/${FILENAME} | tar zxv -C /tmp
RUN mv /tmp/linux-amd64/helm /usr/local/bin/
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTL/bin/linux/amd64/kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

CMD ["/bin/sh"]
