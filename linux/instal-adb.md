---

---

# Install Android Debug Bridge

```bash
sudo wget -P /opt https://dl.google.com/android/repository/platform-tools-latest-linux.zip
sudo unzip /opt/platform-tools-latest-linux.zip -d /opt

sudo ln -s /opt/platform-tools/adb /usr/local/bin/adb
sudo ln -s /opt/platform-tools/fastboot /usr/local/bin/fastboot

sudo rm /opt/platform-tools-latest-linux.zip
```

## How to install apk files

```bash
adb install <apk_file>
# to install do SD card
adb -s install <apk_file>
# to reinstall
adb install -r <apk_file>
```

