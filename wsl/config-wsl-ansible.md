---
permalink: /wsl/config-wsl-ansible.html
title: Config WSL Dev environment using Ansible
author: Lucio Rezende Queiroz
date: 2020-06-10
---

# Config Dev environment

Check if distro is WSL2

```PowerShell
wsl.exe --list --verbose
```

## Install Ansible

```bash
# Make sure it is the latest
sudo apt-get update
sudo apt-get install -y software-properties-common
# Not working on Ubuntu 20.04
# sudo apt-add-repository --yes --update ppa:ansible/ansible
# sudo apt-add-repository --remove ppa:ansible/ansible
sudo apt-get update \
  && sudo apt-get install -y ansible
```

## Clone repo

```bash
mkdir ~/projects
cd ~/projects

# git clone git@github.com:<your_user_name>/ansible.git
# git clone git@github.com:luciorq/ansible.git
```

## Installing it with ansible

```bash
# sudo ansible-pull -U https://github.com/<your_user_name>/ansible.git
ansible-pull -U https://github.com/luciorq/wsl-dev-playbook.git --ask-become-pass
ansible-pull -U git@github.com:luciorq/wsl-dev-playbook.git

```

```bash

# ansible-playbook local.yaml --ask-become-pass

```

---

Done!
