FROM --platform=linux/amd64 ubuntu:20.04

WORKDIR /app

COPY install_rill.txt ./

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    file \
    git \
    unzip \
    sudo

ENV TERM xterm
RUN sudo cat install_rill.txt | bash
RUN sudo rill upgrade

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && sudo ./aws/install

# CMD ["rill", "start", "--readonly"]
CMD ["rill", "start", "my-rill-project"]
