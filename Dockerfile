FROM php:cli-alpine

ADD . /app
WORKDIR /app

RUN curl -sS https://getcomposer.org/installer | php
RUN php composer.phar install

EXPOSE 8080

ENTRYPOINT [ "php" ]
CMD [ "-S", "0.0.0.0:8080", "-t", "/app/public" ]
