#
# Ruster - Rust Dockerfile
#

FROM alpine:edge

MAINTAINER Davy Duperron <yamafaktory@gmail.com>

# Upgrade all packages to the latest version:
RUN apk --no-cache upgrade

RUN apk --no-cache add \
    cargo \
    gcc \
    musl-dev \
    rust

# Create a volume where the data to be checked will be mounted.
VOLUME /ruster

# Set it as working directory.
WORKDIR /ruster

# Provide defaults for the container.
CMD ["cargo"]
