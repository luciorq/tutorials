---
permalink: /wsl/wsl_ubuntu_install.html
title: Install WSL
author: Lucio Rezende Queiroz
date: 2020-05-13
---

# Install GNU/LINUX on Windows through WSL

## Activate WSL feature On Windows

* Execute the following commands in a Windows PowerShell with Administrative privileges
* Run Command pront as administrator and execute

```PowerShell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

* For WSL2 also run:

```PowerShell
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
```

A restart will probablu be necessary.

## Install Ubuntu

Go to microsoft store and install latest Ubuntu WSL

* Download Linux distribution of choice
* tested on Ubuntu 20.04

1. Wait until setup finishes
2. Create user and password, I recommend using the same user name between Windows and Linux

### Check if wsl2 is activated

Check if VERSION column is 2

```PowerShell
wsl.exe --list --verbose
```

if it is not:

```PowerShell
wsl.exe --set-version DistroName 2
```

### Update  distribution

```bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get dist-upgrade
```

## Useful tools

Other programs that are useful to install

### Install the Windows Terminal

### Install Power Toys

### Add a link to WSL files


Your Linux files are stored at:

* CTRL+E to open explorer.exe

`\\wsl$\Ubuntu-20.04\home\%USERNAME%\`

* Use this so WSL files can be accessible in the windows home

### Additional info

Documentation:

---

Done!
