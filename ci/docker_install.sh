#!/bin/bash

[[ ! -e /.dockerenv ]] && exit 0

set -xe

apt update -yqq
apt install -yqq libcurl4-openssl-dev pkg-config libssl-dev

curl --location --output /usr/local/bin/composer https://getcomposer.org/composer-stable.phar

