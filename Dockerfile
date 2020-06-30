FROM php:7.4.2
COPY . /app
WORKDIR /app
RUN chmod +x ci/docker_install.sh
RUN apt update -yqq
RUN apt install -yqq libcurl4-openssl-dev pkg-config libssl-dev unzip
RUN curl --location --output composer.phar https://getcomposer.org/composer-stable.phar
RUN php composer.phar install
RUN php vendor/bin/phpunit --log-junit report.xml tests
