FROM php:8-fpm

RUN apt-get update
RUN apt-get install -y git zip

RUN apt-get install -y libpng-dev libjpeg-dev

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install opcache

RUN apt-get install -y libssl-dev openssl
RUN docker-php-ext-install phar

RUN apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*