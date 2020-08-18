FROM ubuntu:20.04

RUN apt-get update && apt-get install -y sudo
RUN adduser --disabled-password --gecos '' docker && adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker
WORKDIR /home/docker
