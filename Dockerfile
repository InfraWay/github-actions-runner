FROM summerwind/actions-runner:latest

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
  && sudo apt update -y \
  && sudo apt install yarn -y \
  && sudo rm -rf /var/lib/apt/lists/*

ARG VERSION=v4.24.4
ARG BINARY=yq_linux_amd64
RUN sudo wget https://github.com/mikefarah/yq/releases/download/${VERSION}/${BINARY} -O /usr/bin/yq && \
  sudo chmod +x /usr/bin/yq
