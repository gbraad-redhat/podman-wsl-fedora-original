#!/bin/sh
wget http://github.com/fedora-cloud/docker-brew-fedora/raw/35/x86_64/fedora-35-x86_64.tar.xz
docker build . -t podman-wsl-fedora:35
docker save podman-wsl-fedora:35 | gzip > podman-wsl-f35.tar.gz
