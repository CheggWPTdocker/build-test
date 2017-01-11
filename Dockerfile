FROM cheggwpt/nginx-php7:0.0.5
MAINTAINER jgilley@chegg.com

ENV APP_ENV dockerfile

# Copy over the project
COPY ./ /webroot/

# set the working directory to webroot on the container
WORKDIR /webroot

# Copy the nginx config into place
COPY ./default.conf /etc/nginx/sites-enabled/

# lets try a build script to see when this happens
RUN mkdir /docker-init.d && \
    cp ./build_script.sh /docker-init.d/ && \
    chmod a+x /docker-init.d/*.sh

RUN rm -rf vendor

RUN php composer.phar install --no-dev -vvv

RUN env_script.sh



