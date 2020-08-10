
# Tutorial Singularity Dev Environment

Escolha a distribuição de seu gosto.
Neste exemplo vou utilizar Ubuntu 20.04

### Crie sua imagem:

```
singularity build --fakeroot --sandbox MEUAMBIENTE docker://ubuntu

singularity exec --fakeroot --writable MEUAMBIENTE/ bash
```

Será criada uma pasta chamada *MEUAMBIENTE*

### Como instalar um programa?

```
apt-get update
apt-get install ncbi-blast+
```

### Como sair?

```
exit
```