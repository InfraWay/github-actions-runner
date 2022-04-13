FROM summerwind/actions-runner:latest

RUN sudo apt update -y \
  && sudo apt install npm -y \
  && sudo npm install -g yarn \
  && sudo rm -rf /var/lib/apt/lists/*

ARG VERSION=v4.24.4
ARG BINARY=yq_linux_amd64
RUN sudo wget https://github.com/mikefarah/yq/releases/download/${VERSION}/${BINARY} -O /usr/bin/yq && \
  sudo chmod +x /usr/bin/yq
