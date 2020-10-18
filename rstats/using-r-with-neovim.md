---
permalink: /rstats/using-r-with-neovim
date: 20200-10-11
---

# Configure vim to work with R

Tested with R 4.0.2, ubuntu 20.04, NVIM 0.4.2 and radian 

## Install vim plugin manager - Vim-Plug

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Add to you .vimrc

```vimrc
call plug#begin('~/.vim/plugged')

Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

call plug#end()
```

After that execute inside vim

```vim
:PlugInstall
```

## Using Nvim-R

Inside vim use: `\rf` to start interactive R session

## WIP - Continue through

https://www.freecodecamp.org/news/turning-vim-into-an-r-ide-cd9602e8c217/

https://www.youtube.com/watch?v=nm45WagtV3w

https://github.com/jamespeapen/Nvim-R/wiki/Custom-Key-Bindings


## _radian_ R interactive consile

```bash
# install release version
pip3 install -U radian

# to run radian
radian

# or the development version
pip3 install -U git+https://github.com/randy3k/radian


# add to .bashrc
alias r="radian"

# edit options at ~/.config/radian/profile

# for autocompletions to work with python
pip3 install jedi
```

### for radian to work with Nvim-R

add this to ~/.vimrc

```vim
let R_app = "radian"
let R_cmd = "R"
let R_hl_term = 0
let R_args = []  " if you had set any
let R_bracketed_paste = 1
```

