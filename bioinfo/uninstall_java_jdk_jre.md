# Uninstall JAVA from Ubuntu

```
ls  /usr/lib/jvm/

$ sudo update-alternatives --remove "java" "/usr/lib/jvm/jdk[version]/bin/java"
$ sudo update-alternatives --remove "javac" "/usr/lib/jvm/jdk[version]/bin/javac"
$ sudo update-alternatives --remove "javaws" "/usr/lib/jvm/jdk[version]/jre/bin/javaws"
$ sudo rm -r /usr/lib/jvm/jdk[version]

# For java-8-oracle
sudo update-alternatives --remove "java" "/usr/lib/jvm/java-8-oracle/bin/java"
sudo update-alternatives --remove "javac" "/usr/lib/jvm/java-8-oracle/bin/javac"
sudo update-alternatives --remove "javaws" "/usr/lib/jvm/java-8-oracle/jre/bin/javaws"
sudo rm -r /usr/lib/jvm/java-8-oracle
sudo apt-get purge openjdk*
sudo apt-get purge --auto-remove openjdk*
```
