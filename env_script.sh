#!/bin/sh

echo "writing $APP_ENV to /webroot/web/app_env"
echo $APP_ENV > /webroot/web/app_env
echo "end writing /webroot/web/app_env"
