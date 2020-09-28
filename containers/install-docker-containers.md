---
permalink: /containers/install-docker-containers
title: Installing Docker Container
author: Lucio Rezende Queiroz
date: 2020-09-28
---

# Install Docker

Use the convenience script to install Docker Containers, from [Docker](https://docs.docker.com/)

Additional instructions to install in other platforms follow this tutorial: [Get Docker](https://docs.docker.com/get-docker/).

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

If you would like to use Docker as a non-root user, you should now consider adding your user to the “docker” group with something like:

```bash
sudo usermod -aG docker $USER
```

You need to login again to your system for those changes to activate.


