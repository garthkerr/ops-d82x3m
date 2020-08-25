FROM hashicorp/packer:1.6.1 AS packer
FROM hashicorp/terraform:0.13.0 AS terraform
FROM ubuntu:20.04

ARG ANSIBLE_VERSION='2.9.12'

ARG REQ_APT='\
  bash \
  curl \
  dnsutils \
  git \
  jq \
  jsonnet \
  make \
  python-is-python3 python3-pip \
  sshpass \
  vim \
  wget \
  zip'

ARG REQ_PIP="\
  ansible==${ANSIBLE_VERSION} \
  ansible-lint \
  awscli \
  boto3 \
  cryptography \
  dopy \
  mitogen \
  netaddr \
  pyhcl \
  pymysql \
  python-gitlab \
  yq"

RUN set -x && export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get --yes install ${REQ_APT} && \
  pip3 install ${REQ_PIP} && \
  apt-get clean && rm -rf ~/.cache

COPY ./scripts/.bin/asdf-terraform /tmp/asdf-terraform
RUN set -x && bash -c "/tmp/asdf-terraform"

COPY --from=packer /bin/packer /bin/packer
COPY --from=terraform /bin/terraform /bin/terraform

WORKDIR /app
