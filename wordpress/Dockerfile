FROM ghcr.io/deck-app/wordpress:6
LABEL maintainer Naba Das <hello@get-deck.com>

# User ID defined
ARG USER_ID
ARG GROUP_ID
RUN if [ ${USER_ID} -gt 0 ]; then \
    	usermod -u $USER_ID www-data && \
		groupmod -g $GROUP_ID www-data \
;fi
# Wordpress upload limites
COPY php.ini /usr/local/etc/php/php.ini
# Add WP-CLI 
RUN apt-get update && apt-get install -y sudo less
RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY wp-su.sh /bin/wp
RUN chmod +x /bin/wp-cli.phar /bin/wp