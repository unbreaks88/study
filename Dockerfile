FROM ubuntu:20.04

WORKDIR /tmp
COPY ./enable_docker.sh .
RUN apt-get update -y && apt-get install -y curl systemctl iputils-ping net-tools
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh
RUN sh enable_docker.sh
