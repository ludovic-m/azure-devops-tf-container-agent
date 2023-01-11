FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
  && rm -rf /var/lib/apt/lists/*

RUN wget --quiet https://releases.hashicorp.com/terraform/1.3.6/terraform_1.3.6_linux_amd64.zip \
  && unzip terraform_1.3.6_linux_amd64.zip \
  && mv terraform /usr/bin \
  && rm terraform_1.3.6_linux_amd64.zip
