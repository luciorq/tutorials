---
author: Lucio Rezende Queiroz
---

# Singularity Containers

## Dependencies

* Install GO Language

```bash
export VERSION=1.13 OS=linux ARCH=amd64 && \
  wget https://dl.google.com/go/go$VERSION.$OS-$ARCH.tar.gz && \
   sudo tar -C /usr/local -xzvf go$VERSION.$OS-$ARCH.tar.gz && \
  rm go$VERSION.$OS-$ARCH.tar.gz

echo 'export GOPATH=${HOME}/go' >> ~/.bashrc && \
    echo 'export PATH=/usr/local/go/bin:${PATH}:${GOPATH}/bin' >> ~/.bashrc && \
    source ~/.bashrc

export VERSION=3.3.0 && # adjust this as necessary \
    wget https://github.com/sylabs/singularity/releases/download/v${VERSION}/singularity-${VERSION}.tar.gz && \
    tar -xzf singularity-${VERSION}.tar.gz && \
    cd singularity

```

```bash

```

## Singularity

```bash
git clone https://github.com/sylabs/singularity.git && \
    cd singularity && \
    git checkout v3.3.0
```

```bash
 ./mconfig && \
    make -C ./builddir && \
    sudo make -C ./builddir install


$ ./mconfig --prefix=/opt/singularity

```
