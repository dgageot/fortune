# Build:
#   docker build -t dgageot/fortune .
#
# Run:
#   docker run --rm -t dgageot/fortune
#
# COPY files/???.cow /usr/share/cowsay/cows/???.cow
# ENTRYPOINT fortune | cowsay -f ???

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
