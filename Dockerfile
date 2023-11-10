FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    curl \
  && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN wget --quiet https://releases.hashicorp.com/terraform/1.6.3/terraform_1.6.3_linux_amd64.zip \
  && unzip terraform_1.6.3_linux_amd64.zip \
  && mv terraform /usr/bin \
  && rm terraform_1.6.3_linux_amd64.zip
