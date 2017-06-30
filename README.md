# r-full-base

This is a docker image based on Debian 8 jessie that contains R 3.4 with 
all the native library dependencies installed using the
[`rcheckserver`](http://statmath.wu.ac.at/AASC/debian/rcheckserver_2.15-54_amd64.deb)
version 2.15-54. This means that it allow one to install any CRAN package.

There is also an extended version that actually have all the CRAN packages installed
[docker-r-full](https://github.com/PRL-PRG/docker-r-full).

## Buidling

```sh
$ cd docker-r-full-base
$ docker build --rm -t prl-prg/r-full-base .
```

## Usage

The image is also in [docker HUB](https://hub.docker.com/r/prlprg/r-full-base/) and therefore ready to be used without building it:

```sh
$ docker run -ti --rm prlprg/r-full-base
```

This will start R 3.4.
