FROM php:8.1-cli
COPY . /var/www/php
EXPOSE 8000
RUN adduser rouser
CMD ["su", "-", "rouser", "-c", "cd /var/www/php && php -S 0.0.0.0:8000"]
