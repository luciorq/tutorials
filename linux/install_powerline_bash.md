---

---

## Install Powerline

Powerline Project: <https://github.com/powerline/powerline>

* tested on Ubuntu 20.04 through WSL2
* Bash version: 5.0.16(1)-release
* Vim version: 8.1
* Python version: 3.8.2
* golang version: 1.13.8

```bash
sudo apt-get update
sudo apt-get install python3-pip

pip3 install --user powerline-status

```

### Alternatives

#### Vim Airline

<https://github.com/vim-airline/vim-airline>

#### powerline-go

```bash
sudo apt-get install golang-go
go get -u github.com/justjanne/powerline-go

vim ~/.bashrc
```
Add to .bashrc

```
GOPATH=$HOME/go
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -error $?)"
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
```
