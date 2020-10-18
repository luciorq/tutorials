---
date: 2020-10-13
permalink: /devops/testing-ansible-with-molecule
---

# Using Molecule and Docker to test Ansible automation

## Install molecule

```bash
pip3 install molecule[docker]
```

Additional, highly recommended packages

```bash
pip3 install yamllint ansible-lint
```

## Create a default scenario

```bash
molecule init scenario
```

### Edit the scenario

```bash
vim molecule/default/molecule.yaml
```



---

## Bonus

Use GitHub actions to integrate molecule on CI.



