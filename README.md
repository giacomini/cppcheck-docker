# cppcheck-docker

## Introduction

Dockerfile to build a minimal image containing
[cppcheck](https://github.com/danmar/cppcheck).

Ideally, by default, it builds the latest cppcheck release, currently 2.0.

## Building

To build the image with the default version

```
docker build -t cppcheck
```

To build the image with a given version, e.g. 1.90

```
docker build --build-arg VERSION=1.90 -t cppcheck
```

## Usage


```bash
docker run --rm -it -v $(pwd):/src cppcheck
```

## References

[Cppcheck manual](http://cppcheck.sourceforge.net/manual.html)
