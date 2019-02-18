# Below Docker instructions creates a container which can be #used as a node for Chef environment
FROM ubuntu:16.04
MAINTAINER "nexamatic"
RUN apt-get update
RUN apt-get install -y openssh-server
RUN apt-get install -y vim
RUN apt-get install -y net-tools
RUN apt-get install sudo
RUN useradd -m -d /home/sai -s /bin/bash sai
RUN echo "sai:sai" | chpasswd
RUN sed -i '21i sai    ALL=(ALL:ALL) ALL' /etc/sudoers
USER sai
WORKDIR /home/sai
ENTRYPOINT echo sai | sudo -S service ssh start && /bin/bash

