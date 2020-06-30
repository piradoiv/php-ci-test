FROM php:7.4.2
COPY . /app
WORKDIR /app
RUN ci/docker_install.sh
RUN php composer.phar install
RUN php vendor/bin/phpunit --log-junit report.xml tests
