---
date: 2020-10-06
permalink: /devops/installing-ansible
---

# Setting up Ansible

A good ansible YouTube series can be found here: <https://www.youtube.com/watch?v=3RiVKs8GHYQ>

## Set up ansible user

```bash
ANSIBLE_USER=bioinfo
```

## Generate SSH key for normal user

Make sure OpenSSH is activated

```bash
sudo apt-get -y install openssh-server
```

Generate key

```bash
ssh-keygen -t ed25519 -C "${PRIVATE_USER} default"
# Accept the first
# Create password for additional security
```

Copy key to the servers

```bash
ssh-copy-id -i ~/.ssh/id_ed25519.pub ${SERVER_IP}
```

### Create Key for ansible user

```bash
ssh-keygen -t ed25519 -C "${ANSIBLE_USER} ansible"
# Now you need to change the path to that key
# E.g.: /home/${USER}/.ssh/${ANSIBLE_USER}
# DON'T create a a password for this key 
```

Copy keys to server

```bash
ssh-copy-id -i ~/.ssh/${ANSIBLE_USER}.pub ${ANSIBLE_USER}@${SERVER_IP}
```

## Install Ansible

```bash
sudo apt-get update
sudo apt-get install python3 python3-dev python3-pip

pip3 install ansible
```

## Remote configure nodes

```bash
cd ~/projects
git clone https://github.com/${USER}/ansible-cluster

cd ansible-cluster

# create admin user
ansible all -u root -m shell -a 'sudo ls; echo $USER'
ansible all -m shell -a 'cd; ls; pwd; whoami' --become --become-user root --ask-become-pass -u root

# test variables from inventory
ansible all -m shell -a 'echo {{ inventory_hostname }}'
ansible all -m shell -a 'echo {{ ansible_user }}'

# create ansible user


# enable sudo without password for ansible user
ansible all -m shell -a 'echo "{{ ansible_user }}\tALL=(ALL)\tNOPASSWD:\tALL\n" > /etc/sudoers.d/{{ ansible_user }}' --become --ask-become-pass
# Check if it was done right
ansible all -m shell -a 'cat /etc/sudoers.d/{{ ansible_user }}' --become

ansible-playbook 01-add-admin-ssh.yml
```

---
