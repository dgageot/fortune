# Build:
#   docker build -t dgageot/fortune .
#
# Run:
#   docker run --rm -t dgageot/fortune
# 
# Change cow face:
#   COPY files/face.cow /usr/share/cowsay/cows/face.cow
#   ENTRYPOINT fortune | cowsay -f face

FROM debian:wheezy
MAINTAINER David Gageot <david@gageot.net>

# Install pre-requisites
RUN apt-get update && apt-get install -y \
  cowsay \
  fortune

ENV PATH $PATH:/usr/games

# Set command
ENTRYPOINT fortune | cowsay
