# Ruster [![Build Status](https://travis-ci.org/yamafaktory/ruster.svg?branch=master)](https://travis-ci.org/yamafaktory/ruster)

> A [Docker](https://www.docker.com/) image for [Rust](https://www.rust-lang.org) based on [alpine:edge](https://hub.docker.com/_/alpine/).

## Prerequisites

Install [Docker Engine](https://docs.docker.com/engine/installation/).

## Obtaining the Docker image

### Downloading the Docker image from Docker Hub

This is the simplest and the fastest solution to get a pre-built image:

```bash
docker pull yamafaktory/ruster
```

### Building the Docker image locally

Please note that this option will take a longer time to be executed.

```bash
git clone https://github.com/yamafaktory/ruster.git
cd ruster
docker build -t yamafaktory/ruster .
```

## Running the Docker image as a container

To run *cargo* in your project, you need to mount the host directory where your project is located (e.g. `/path/to/your/project`) as a data volume in the container (`:/ruster` - this name is set in the Dockerfile so please do not modify it!) by running for example the following command:

```bash
docker run --rm -it -v /path/to/your/project:/ruster yamafaktory/ruster cargo run
```

To get a list of the commands and options available via the [Cargo CLI tool](http://doc.crates.io/index.html), run:

```bash
docker run --rm -it yamafaktory/ruster
```

## License

Released under the [MIT license](https://opensource.org/licenses/MIT) by Davy Duperron.
