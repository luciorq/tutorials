# WSL2 Config 

Comment on previous tutorials
WSL2 has changed a lot during the last months and now it can robustly run 
RStudio Server and Docker, what is 99% of what I need to do my work. So I will surelly promote it here. For previous tutorial [WSL1 tutorial](20181208-wsl_ubuntu_config.md)


## Installing Docker Container infrastructure

```bash
mkdir install_files
cd install_files
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```

You will be prompted to enter your password

Add your User to the docker user group

```bash
sudo usermod -aG docker $USER
```

At this point you need to log out of your Linux user and log on again.
You can execute exit and open a new WSL2 shell.

```bash
docker ps
docker context ls
```


