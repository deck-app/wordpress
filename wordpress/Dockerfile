FROM wordpress:latest
LABEL maintainer Naba Das <hello@get-deck.com>

# User ID defined
ARG USER_ID
RUN if [ ${USER_ID} -gt 0 ]; then \
    	usermod -u $USER_ID www-data && \
    	groupmod -g $USER_ID www-data \
;fi