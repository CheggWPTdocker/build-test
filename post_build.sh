#!/bin/sh
echo "*** POST BUILD ***"
echo "post_build app_build_env: $APP_BUILD_ENV"
echo "post_build app_env: $APP_ENV"
echo "post_build app_build_env: $APP_BUILD_ENV" > /webroot/web/app_env
echo "post_build app_env: $APP_ENV" >> /webroot/web/app_env
echo "*** POST BUILD END ***"
