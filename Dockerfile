FROM php:8.0-cli
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions bcmath
RUN install-php-extensions bz2
RUN install-php-extensions calendar
RUN install-php-extensions csv
RUN install-php-extensions decimal
RUN install-php-extensions exif
RUN install-php-extensions gd
RUN install-php-extensions geospatial
RUN install-php-extensions gettext
RUN install-php-extensions gnupg
RUN install-php-extensions http
RUN install-php-extensions imagick
RUN install-php-extensions imap
RUN install-php-extensions intl
RUN install-php-extensions mcrypt
RUN install-php-extensions mysqli
RUN install-php-extensions oci8
RUN install-php-extensions opcache
RUN install-php-extensions pdo_mysql
RUN install-php-extensions pdo_oci
RUN install-php-extensions redis
RUN install-php-extensions soap
RUN install-php-extensions sockets
RUN install-php-extensions ssh2
RUN install-php-extensions vips
RUN install-php-extensions yaml
RUN install-php-extensions zip

RUN apt-get update -y && apt-get install --no-install-recommends --no-install-suggests -y \
    curl \
    ghostscript \
    jq \
    poppler-utils \
    ssh \
    unzip \
    zip \
    xz-utils

RUN curl https://rclone.org/install.sh | bash
RUN rclone config touch

VOLUME ["/scripts"]
WORKDIR /scripts

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
COPY ./custom.ini $PHP_INI_DIR/conf.d/

ENTRYPOINT ["php"]
CMD ["-m"]
