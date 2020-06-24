FROM hashicorp/packer:1.6.0 AS packer
FROM hashicorp/terraform:0.12.26 AS terraform
FROM ubuntu:20.04

ENV ANSIBLE_VERSION 2.9.9

ENV REQ_APT \
  bash \
  curl \
  dnsutils \
  git \
  jq \
  jsonnet \
  make \
  python-is-python3 python3-pip \
  vim \
  wget \
  zip

ENV REQ_PIP \
  ansible==${ANSIBLE_VERSION} \
  ansible-lint \
  awscli \
  boto3 \
  cryptography \
  dopy \
  mitogen \
  netaddr \
  pymysql \
  python-gitlab \
  yq

RUN set -x && export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get --yes install ${REQ_APT} && \
  pip3 install ${REQ_PIP} && \
  apt-get clean && rm -rf ~/.cache

COPY --from=packer /bin/packer /bin/packer
COPY --from=terraform /bin/terraform /bin/terraform

WORKDIR /app
