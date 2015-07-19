FROM debian:jessie

MAINTAINER nathaniel_se

ENV DEBIAN_FRONTEND noninteractive

ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y \
      ca-certificates \
      wget

RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb

RUN dpkg -i erlang-solutions_1.0_all.deb && apt-get update

RUN apt-get install -y elixir
