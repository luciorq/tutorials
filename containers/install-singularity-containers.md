---
permalink: /containers/install-singularity-containers
title: Installing Singularity Containers
author: Lucio Rezende Queiroz
date: 2020-09-28
---

# Singularity Containers

Tested on Ubuntu 20.04

## Dependencies

* System dependencies

```bash
sudo apt-get update \
  && sudo apt-get install -y \
    build-essential \
    libssl-dev \
    uuid-dev \
    libgpgme11-dev \
    squashfs-tools \
    libseccomp-dev \
    wget \
    pkg-config \
    git \
    cryptsetup \
    socat
```

## GO language

* Install GO Language

* if upgrading, first remove `sudo rm -rf /usr/local/go`

```bash
cd /usr/local
# https://dl.google.com/go/go1.15.2.linux-amd64.tar.gz
export VERSION=1.15.2 \
       OS=linux \
       ARCH=amd64 \
  && wget -O /tmp/go${VERSION}.${OS}-${ARCH}.tar.gz https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz \
   && sudo tar -C /usr/local -xzf /tmp/go${VERSION}.${OS}-${ARCH}.tar.gz \
   && rm /tmp/go${VERSION}.${OS}-${ARCH}.tar.gz
```

```bash
sudo ln -s /usr/local/go/bin/go /usr/local/bin/go

go version
```

## Singularity

```bash
# https://github.com/hpcng/singularity/releases/download/v3.6.3/singularity-3.6.3.tar.gz
# adjust Version as necessary
export VERSION=3.6.3 \
  &&  wget -O /tmp/singularity-${VERSION}.tar.gz https://github.com/sylabs/singularity/releases/download/v${VERSION}/singularity-${VERSION}.tar.gz \
  && sudo tar -C /usr/local -xzf /tmp/singularity-${VERSION}.tar.gz \
  && cd /usr/local/singularity \
  && sudo ./mconfig \
  && sudo make -C ./builddir \
  && sudo make -C ./builddir install
```

### Check if it is working

```bash
# Check installed version
singularity version
```

DONE!

----

