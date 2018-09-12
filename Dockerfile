FROM ubuntu:18.04
RUN apt-get update
RUN apt-get --yes upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes --allow-unauthenticated \
    php-zip \
    php-xmlrpc \
    php-gd \
    php-mysql \
    php-mbstring \
    php-xml \
    libapache2-mod-php \
    php-ldap \
    curl \
    php-curl \
    php-memcache
RUN a2enmod rewrite 
RUN a2enmod ssl
CMD apachectl -D FOREGROUND
EXPOSE 80 443