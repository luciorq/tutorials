# Installing STAR aligner

```bash
# Install pre-requisites
sudo apt-get update
sudo apt-get install \
  g++ \
  make

# Get latest STAR source from releases
STAR_VERSION=2.7.3a
wget https://github.com/alexdobin/STAR/archive/${STAR_VERSION}.tar.gz
tar -xzf ${STAR_VERSION}.tar.gz
cd STAR-${STAR_VERSION}

# Alternatively, get STAR source using git
git clone https://github.com/alexdobin/STAR.git

# Compile under Linux
# Compile
cd STAR/source
make STAR
```

# Building image

```bash
cd ~/projects/docker_images
docker build -t luciorq/star dockerfiles/star

```

# Running container

```
docker run --rm -u $UID luciorq/star -h
```


