FROM php:5.6-apache
RUN docker-php-ext-install mysqli
RUN a2enmod rewrite
RUN echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf
RUN a2enconf fqdn
RUN service apache2 restart