# r-full-base

This is a docker image based on [r-base:3.5.0](https://hub.docker.com/_/r-base/) that contains R 3.5.0 with 
all the native library dependencies installed using the
[`rcheckserver`](http://statmath.wu.ac.at/AASC/debian/binary-amd64/rcheckserver_2.15.86_amd64.deb) allowing one to install almost any CRAN package.

There is also an extended version that actually have all the CRAN packages installed
[docker-r-full-cran](https://github.com/PRL-PRG/docker-r-full-cran).

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

This will start R.
