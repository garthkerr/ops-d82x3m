FROM hashicorp/packer:1.5.4 AS packer
FROM hashicorp/terraform:0.12.24 AS terraform
FROM ubuntu:18.04

ENV ANSIBLE_VERSION 2.9.6

ENV REQ_APT_BUILD \
  apt-utils \
  gcc

ENV REQ_APT \
  bash \
  curl \
  dnsutils \
  git \
  jq \
  make \
  python \
  python-pip \
  python3 \
  python3-pip \
  vim \
  wget \
  zip

ENV REQ_PIP \
  ansible==${ANSIBLE_VERSION} \
  ansible-lint \
  awscli \
  botocore \
  boto \
  boto3 \
  cryptography \
  dopy \
  mitogen \
  netaddr \
  pymysql \
  python-gitlab \
  yq

RUN set -x \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get --yes install ${REQ_APT_BUILD} \
  && apt-get --yes install ${REQ_APT} \
  && pip2 install ${REQ_PIP} \
  && pip3 install ${REQ_PIP} \
  && apt-get --yes --auto-remove --purge remove ${REQ_APT_BUILD} \
  && apt-get clean

COPY --from=packer /bin/packer /bin/packer
COPY --from=terraform /bin/terraform /bin/terraform

WORKDIR /app

