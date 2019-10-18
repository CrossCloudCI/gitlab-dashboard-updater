FROM circleci/golang:1.13-node

USER root

RUN apt update \
    && apt install -y ca-certificates

#Install Ruby Deps

RUN apt install -y patch bzip2 gawk patch zlib1g-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison libffi-dev libgmp-dev libreadline6-dev
#libssl1.0-dev
RUN wget http://security.debian.org/debian-security/pool/updates/main/o/openssl1.0/libssl1.0.2_1.0.2t-1~deb9u1_amd64.deb && \
apt install ./libssl1.0.2_1.0.2t-1~deb9u1_amd64.deb && \
wget http://security.debian.org/debian-security/pool/updates/main/o/openssl1.0/libssl1.0-dev_1.0.2t-1~deb9u1_amd64.deb && \
apt install ./libssl1.0-dev_1.0.2t-1~deb9u1_amd64.deb

ENV DOCKER_CHANNEL edge
ENV DOCKER_VERSION 17.11.0-ce

RUN set -ex; \
	apt install -y \
		curl \
		tar \
    ; \
  dockerArch='x86_64' \
  ; \
	if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then \
		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; \
		exit 1; \
	fi; \
	\
	tar --extract \
		--file docker.tgz \
		--strip-components 1 \
		--directory /usr/local/bin/ \
	; \
	rm docker.tgz; \
	dockerd -v; \
	docker -v

COPY modprobe.sh /usr/local/bin/modprobe
COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]