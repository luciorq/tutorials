# Windows configurations

* Execute those commands in a Windows PowerShell with Administrative privileges

# Activate WSL feature On Windows

* Run Command pront as administrator and execute

`Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`

* Download Linux distribution of choice

# Update distro (Ubuntu)

```
sudo apt-get update

sudo apt-get upgrade

sudo apt-get install \
  wget \
  git \
  htop \
  dstat \
  vim \
  build-essential
```

# Install Hyper on Windows

* Download from [hyper.js](hyper.js)
* Edit .hyper or
* Edit -> Preferences -> add `shell: 'C:\\Windows\\System32\\bash.exe',` to the correct line

# Link Windows folder to WSL home

* Use this so WSL files can be accessible by windows native tools

`ln -s /mnt/c/projects/ $HOME/projects`

---

# Docker

## Install Ubuntu 18.04 native docker client and engine

```
sudo apt update && sudo apt -y upgrade

sudo apt install -y docker.io

sudo cgroupfs-mount

sudo usermod -aG docker $USER
```

## Create a startup script

```
$ cat Docker.sh
#!/bin/sh
 pass='password1!'
 echo "$pass" | sudo -S cgroupfs-mount && sudo service docker start
 sleep 15
 docker version

$ chmod 700 Docker.sh

$ ./Docker.sh
```

## Create desktop link to executable script

* Under construction

# Not used yet

----

## Install GNU/Linux RStudio with x11 support

```
sudo apt-get update
sudo apt-get install x11-apps

echo "export DISPLAY=localhost:0.0" >> ~/.bashrc
```

----

# DEPRECATED from here

## Install Docker (Desktop) for Windows

After installing go to Settings -> General -> Check *Expose Daemon on tcp://localhost:2375 without TLS*

### Install Docker CLI within WSL

```
sudo apt-get update

sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Confirm fingerprint
sudo apt-key fingerprint 0EBFCD88

# Add stable repo
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable"

sudo apt-get update
sudo apt-get install docker-ce
```
## Communication with Docker Engine

```
docker -H localhost:2375 images
export DOCKER_HOST=localhost:2375

# Make changes permanent
echo "export DOCKER_HOST=localhost:2375" >> ~/.bashrc
source ~/.bashrc
```

```
# Allow your user to access the Docker CLI without needing root.
sudo usermod -aG docker $USER

# Install Docker Compose
export DOCKER_COMPOSE_VERSION=1.23.2
sudo curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose
```

----


# Symlink mounted windows filesystem to linux home

```
mkdir ~/external
ln -s  ~/external /mnt/c/Users/luciorq
```

----

# Install Android Device Bridge ADB

Download from google and extract Downloads folder
[Link](https://dl.google.com/android/repository/platform-tools-latest-linux.zip)

```
cd /mnt/c/Users/luciorq/Downloads/platform-tools

./adb devices
```
