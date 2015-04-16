# rippled-apt

Tools for building rippled apt packages.

## Usage

It is recommended to use docker to produce a consistent build environment:

    $ docker run -t -i -v `pwd`:/root/apt ubuntu:latest /bin/bash /root/apt/apt-build.sh

Without docker, just run sudo ./apt-build.sh

## Caveats

This package was initially created by Torrie Fischer, who is a fedora packager.
This might not be the highest quality package. Patches and other contributions
are welcome ❤
