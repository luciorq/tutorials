---
permalink: /cloud/install-k3s-with-k3sup
date: 2020-10-06
---

Install `k3s` with `k3sup`
========

[`k3sup website`](https://github.com/alexellis/k3sup)

Follow tutorial from:

* https://asciinema.org/a/262630
* https://github.com/openfaas/workshop/blob/master/lab1b.md
* https://github.com/openfaas/workshop/

```bash
curl -sLS https://get.k3sup.dev | sh
sudo install k3sup /usr/local/bin/

k3sup --help
k3sup version
```

## Install to another machine

``bash
k3sup install --ip ${MENDEL_IP} --user ${ANSIBLE_USER}

```

