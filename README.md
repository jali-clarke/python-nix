# python-nix

a test to see whether a nix-sourced python docker image can be smaller than `python:debian` (and maybe `python:alpine` (but probably not))

## what is included

### sys packages

* `python3.8`
* `bash`
* `coreutils` (e.g. `id`, etc)

### python packages
* `pip`
* `setuptools`
* `wheel`

## how to use

`nix-build -o python-nix.tar.gz && docker load -i python-nix.tar.gz`

## size comparison

`3.8-nix` is from this repo.  all other tags are from docker hub (Aug 21 2020)

| Image Name | Image Size |
|------------|------------|
| python:3.8-nix | 122MB |
| python:3.8-alpine | 42.7MB |
| python:3.8-slim-buster | 113MB |
| python:3.8-buster | 882MB |
