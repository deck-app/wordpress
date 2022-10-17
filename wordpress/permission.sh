#!/bin/bash
while true; do

inotifywait -e modify,create,delete -r /var/www/html 2> /dev/null && \
chown -R www-data:www-data /var/www/html 2> /dev/null

done
