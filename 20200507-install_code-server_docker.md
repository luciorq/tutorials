# Install cdr code-server

* Using Docker

<https://github.com/cdr/code-server>

```bash
docker pull codercom/code-server:latest
```

Set Ports

```bash
 docker run -it -p ${EXTERNALIP}:${EXTERNAL_PORT}:8080 -v "/home/$USER/projects:/home/coder/proj
ect" -u "$(id -u):$(id -g)" codercom/code-server:latest
```

----
