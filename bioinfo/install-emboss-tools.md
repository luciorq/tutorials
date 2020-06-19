---
permalink: /bioinfo/install-emboss.html
title: Installing EMBOSS on Ubuntu Server
author: Lucio Rezende Queiroz
date: 2020-06-09
---

# EMBOSS

EMBOSS - [Instructions](http://emboss.sourceforge.net/download/?nowrap#Stable)

Download - [Here](ftp://emboss.open-bio.org/pub/EMBOSS/)

```bash
sudo su
cd /usr/local/
wget ftp://emboss.open-bio.org/pub/EMBOSS/emboss-latest.tar.gz
tar xfz emboss-latest.tar.gz

rm emboss-latest.tar.gz
cd EMBOSS-6.6.0/

./configure --prefix=/usr/local/
make

# need to ldconfig all servers
# TODO use ansible adhoc?
ldconfig

make install
# To check if it is working
make check
```
