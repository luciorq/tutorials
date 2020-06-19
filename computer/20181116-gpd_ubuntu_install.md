# GPD Pocket

* Ubuntu Mate gpd specific ISO installation. [Link](https://ubuntu-mate.org/gpd-pocket/)

* Ubuntu Desktop

# Install gpd pocket Hardware specific changes

From github project:

```
cd ~/projects
git clone https://github.com/wimpysworld/gpd-pocket2-ubuntu.git
cd gpd-pocket2-ubuntu
sudo ./gpd-pocket-ubuntu.sh enable # || disable
```

## create gpd respin ISO

* Download an .iso image for one of the Ubuntu 18.10 (or newer) flavours.
* Edit `gpd-pocket-ubuntu-respin.sh` and update the `ISO_IN=` with the full path the .iso your downloaded.

```bash
sudo ./gpd-pocket-ubuntu-respin.sh
```

A new .iso will be created that includes the additional hardware tweaks
required by the GPD Pocket.

  * Use `Startup Disk Creator` to create a live USB

# Updating

```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim htop git gnome-tweak-tool libavcodec-extra
```

# Install aditional software

```
sudo apt-get install libavcodec-extra vlc curl
```

## Google Chrome

```
cd ~/Downloads
wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i chrome.deb
```

## Hyper.js (terminal)

```
cd ~/Downloads
wget -O hyper.deb https://releases.hyper.is/download/deb
sudo apt-get install gconf2 libappindicator1
sudo apt-get --fix-broken install
sudo dpkg -i hyper.deb
```

## Atom (text editor)

```
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom
```

## Filezilla

```

```

# Uninstall unused apps

```
sudo apt-get purge firefox thunderbird rhythmbox
sudo apt-get autoremove
```

# Install gnome

```
sudo apt install gnome-session gdm3 ubuntu-desktop gnome-tweak-tool
```

select gdm3 as default session manager

## Installing macOS dark theme to gnome

  * Download `McOS-MJV-Dark-mode-Gnome-3.30` from [gnome-look](https://www.gnome-look.org/p/1241688)

```
cd ~/Downloads
mv McOS-MJV-Dark-mode-Gnome-3.30-1.1.tar.xz macosmojave.tar.xz
sudo tar xvf macosmojave.tar.xz -C /usr/share/themes/
gsettings set org.gnome.desktop.wm.preferences button-layout "close,minimize,maximize:"
```
