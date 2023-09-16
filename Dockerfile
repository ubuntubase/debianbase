ARG VERSION
FROM debian:$VERSION-slim

ENV TZ=Europe/Amsterdam

# Improve build speed by specifying the fastly CDN for apt-repository
# Fastly doesn't (yet) support Debian 12 (Bookworm)
# ARG DEBIAN_FRONTEND=noninteractive
# ENV APT_MIRROR=cdn-fastly.deb.debian.org
# RUN sed -ri "s/(httpredir|deb).debian.org/${APT_MIRROR:-deb.debian.org}/g" /etc/apt/sources.list \
#  && sed -ri "s/(security).debian.org/${APT_MIRROR:-security.debian.org}/g" /etc/apt/sources.list

# Make sure we have the latest packages installed
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
