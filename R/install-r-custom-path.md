---

---

# Install R on a custom path

Tested on Ubuntu 20.04

installing to /opt/R/

## Using binary packages

[Source](https://docs.rstudio.com/resources/install-r/)


```bash
export R_VERSION=4.0.2

curl -O https://cdn.rstudio.com/r/ubuntu-2004/pkgs/r-${R_VERSION}_1_amd64.deb
sudo gdebi r-${R_VERSION}_1_amd64.deb


# test if it is working
/opt/R/${R_VERSION}/bin/R --version


# symlink to path
sudo ln -s /opt/R/${R_VERSION}/bin/R /usr/local/bin/R
sudo ln -s /opt/R/${R_VERSION}/bin/Rscript /usr/local/bin/Rscript
```

## change CRAN repository to binary packages

add to `.Rprofile`

```bash
echo 'options(repos = c(REPO_NAME = "https://packagemanager.rstudio.com/all/__linux__/focal/latest"))' >> ~/.Rprofile

```

## Install most common system dependencies

Also use binary packages for linux

from: <https://packagemanager.rstudio.com/client/#/>


```bash


```
