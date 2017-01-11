FROM cheggwpt/nginx-php7:0.0.5
MAINTAINER jgilley@chegg.com

ENV APP_ENV dockerfile

# Copy over the project
COPY ./ /webroot/

# Copy the nginx config into place
RUN cp /webroot/default.conf /etc/nginx/sites-enabled/

# lets try a build script to see when this happens
RUN mkdir /docker-init.d && \
    cp /webroot/build_script.sh /docker-init.d/ && \
    chmod a+x /docker-init.d/*.sh

# Clean up stuff
RUN rm -rf /webroot/vendor && \
	rm -rf /webroot/web/app_env && \
	rm -rf /webroot/composer.lock

# do this env thing
RUN /webroot/env_script.sh

