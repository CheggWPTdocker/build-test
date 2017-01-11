FROM cheggwpt/nginx-php7:0.0.5
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

# Clean up stuff
# RUN rm -rf ./composer.lock

# do this env thing
RUN ./env_script.sh

VOLUME /webroot

