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

ENV PATH:$PATH:/usr/games

# Set RUN prefix command
#
ENTRYPOINT ["fortune | cowsay"]
