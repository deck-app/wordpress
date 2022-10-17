FROM ghcr.io/deck-app/wordpress:6
LABEL maintainer Naba Das <hello@get-deck.com>

# User ID defined
ARG USER_ID
ARG GROUP_ID
RUN if [ ${USER_ID} -gt 0 ]; then \
    	usermod -u $USER_ID www-data && \
		groupmod -g $GROUP_ID www-data \
;fi
# RUN apt-get update && apt-get install -y nano cron
# Wordpress upload limites
COPY php.ini /usr/local/etc/php/php.ini
# Add WP-CLI 
RUN apt-get update && apt-get install -y sudo less nano inotify-tools
RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY wp-su.sh /bin/wp
RUN chmod +x /bin/wp-cli.phar /bin/wp
COPY container_cronjob /etc/cron.d/container_cronjob
RUN apt-get update && apt install -y cron nano inotify-tools
COPY permission.sh /usr/local/bin/permission.sh
RUN chmod +x /usr/local/bin/permission.sh
RUN echo '* * * * * root sh /usr/local/bin/permission.sh' >> /etc/crontab
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
# RUN sed -i -e 's/^exec "$@"/#exec "$@"/g' /usr/local/bin/docker-entrypoint.sh
CMD docker-entrypoint.sh & /usr/sbin/apache2ctl -D FOREGROUND
