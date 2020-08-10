---
permalink: /bioinfo/install-singularity-containers.html
title: Installing Singularity Containers on Ubuntu Server
author: Lucio Rezende Queiroz
date: 2020-08-01
---

# Singularity Containers

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
# https://dl.google.com/go/go1.14.3.linux-amd64.tar.gz
export VERSION=1.14.6 \
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
# https://github.com/hpcng/singularity/releases/download/v3.6.1/singularity-3.6.1.tar.gz
# https://github.com/hpcng/singularity/releases/download/v3.6.0-rc.4/singularity-3.6.0-rc.4.tar.gz
# adjust Version as necessary
export VERSION=3.6.1 \
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

NOT USED YET, probably **never will**

## Singularity CRI

* Kubernetes Container Runtime Interface for Singularity

First, [install kubernetes]()!

<https://github.com/sylabs/singularity-cri>

```bash
export VERSION=1.0.0-beta.7
git clone https://github.com/sylabs/singularity-cri.git && \
  cd singularity-cri && \
  git checkout tags/v${VERSION} -b v${VERSION} && \
  make && \
  sudo make install


# Install to /usr/local/bin

# If need to uninstall
# Use `sudo make uninstall`
```

Edit the config YAML file, example config can be found [here](https://github.com/sylabs/singularity-cri/blob/master/config/sycri.yaml)

```bash
sycri --config ~/my-config.yaml
```

DEBUG MODE (-v)

```bash
sycri -v 6
```
