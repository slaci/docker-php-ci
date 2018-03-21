FROM slaci/php-fpm

LABEL maintainer="slaci1@gmail.com"

ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_BIN_DIR=/usr/local/bin

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN set -e \
    && composer global require \
        phpmd/phpmd \
        friendsofphp/php-cs-fixer

COPY config /ci-configs

ENTRYPOINT []
