FROM cheggwpt/nginx-php7:latest
MAINTAINER jgilley@chegg.com

ENV APP_ENV dockerfile

WORKDIR /webroot

# Copy over the project
COPY . ./

# Copy the nginx config into place
RUN cp ./default.conf /etc/nginx/sites-enabled/

# lets try a build script to see when this happens
RUN mkdir /docker-init.d && \
    cp /webroot/build_script.sh /docker-init.d/ && \
    chmod a+x /docker-init.d/*.sh

# Do Install 
# RUN /usr/bin/php ./composer.phar install --no-interaction --no-dev --no-scripts --no-progress -vvv -o

