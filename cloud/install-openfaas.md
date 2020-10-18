---
permalink: /cloud/install-openfaas
date: 2020-10-06
---

Install `OpenFaaS`
=====

Using tutorial from [OpenFaaS Lab](https://github.com/openfaas/workshop/blob/master/lab1.md)

Tested on Ubuntu 20.04 and Docker CE Version: 19.03.13

```bash
curl -sLSf https://cli.openfaas.com | sudo sh

# Check installed version
faas-cli version

docker login --username $USER

# edit .bashrc
export OPENFAAS_PREFIX="$USER" # Populate with your Docker Hub username

```

## install kubernetes controller

Install `kubectl` on you local machine

```bash
export VER=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
curl -LO https://storage.googleapis.com/kubernetes-release/release/$VER/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
```

----
