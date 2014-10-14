# Build:
#   docker build -t dgageot/fortune .
#
# Run:
#   docker run --rm -t dgageot/fortune

# DOCKER_VERSION 1.2

FROM debian:wheezy
MAINTAINER David Gageot <david@gageot.net>

# Install pre-requisites
#
RUN apt-get update && apt-get install -y \
  cowsay \
  fortune

ENV PATH $PATH:/usr/games

# Set RUN command
#
ENTRYPOINT fortune | cowsay


























#ENTRYPOINT fortune | cowsay -f ninja
#COPY ninja.cow /usr/share/cowsay/cows/ninja.cow
