FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
  && rm -rf /var/lib/apt/lists/*

RUN wget --quiet https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_linux_amd64.zip \
  && unzip terraform_0.12.26_linux_amd64.zip \
  && mv terraform /usr/bin \
  && rm terraform_0.12.26_linux_amd64.zip