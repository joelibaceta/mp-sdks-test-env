FROM debian:stable

# Build workspace folder
RUN mkdir scripts

# PHP installation section
RUN apt-get update && apt-get install -y curl 
RUN apt-get install -y php

# Composer installation section
RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip
RUN curl --silent --show-error https://getcomposer.org/installer | php

# Mercado Pago SDK installation section
RUN php composer.phar require "mercadopago/dx-php:1.1.5"

WORKDIR /script