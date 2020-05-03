
# BEAST

BEAST is a cross-platform program for Bayesian analysis of molecular sequences using MCMC.

Version: v1.10.4

Installed on Ubuntu 16.04

## Dependencies

### BEAGLE

beagle-lib - [Instructions](https://github.com/beagle-dev/beagle-lib/wiki/LinuxInstallInstructions)

```bash
sudo apt-get install build-essential autoconf automake libtool git pkg-config openjdk-9-jdk
sudo apt-get install doxygen
sudo su
cd /usr/local/
git clone --depth=1 https://github.com/beagle-dev/beagle-lib.git
cd beagle-lib
./autogen.sh
./configure --prefix=/usr/local/
make install
# To check if it is working
make check
```

If installing to user home add variables

```
# This is not necessary because /usr/local/lib is already included in /etc/ld.so.conf.d/libc.conf
# export LD_LIBRARY_PATH=$HOME/lib:$LD_LIBRARY_PATH
# This is also not necessary
# export PKG_CONFIG_PATH=$HOME/lib/pkgconfig:$PKG_CONFIG_PATH
```

### JAVA

jdk 8 is recommended by beast manual
 
```bash
sudo apt-get install openjdk-8-jre openjdk-8-jdk
```

## BEAST

### Download

BEAST can be download from official [development repo](https://github.com/beast-dev/beast-mcmc/releases)

```bash
sudo su
cd /usr/local/
wget https://github.com/beast-dev/beast-mcmc/releases/download/v1.10.4/BEASTv1.10.4.tgz
```

### Install

```bash
sudo tar -C /usr/local -zxvf BEASTv1.10.4.tgz
sudo chown -R root:root /usr/local/BEASTv1.10.4
sudo rm /usr/local/BEASTv1.10.4.tgz
```

Edit programs to add dependencies path for all users

*  add `export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH` to all users

```bash
sudo vim /etc/profile.d/bioinfo-programs.sh
# add LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH
sudo chmod +x /etc/profile.d/bioinfo-programs.sh
```

Add programs to default bin path

```bash
sudo ln -s /usr/local/BEASTv1.10.4/bin/beast /usr/local/bin/beast
sudo ln -s /usr/local/BEASTv1.10.4/bin/beauti /usr/local/bin/beauti
```

### Test if it is working

```bash
beast -beagle_info
```

----
