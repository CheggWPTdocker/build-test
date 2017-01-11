#!/bin/sh

echo "writing $APP_ENV to /webroot/web/app_env"
echo $APP_ENV > ./web/app_env
echo "end writing $APP_ENV to /webroot/web/app_env"
