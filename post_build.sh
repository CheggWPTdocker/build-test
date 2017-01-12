#!/bin/sh

echo "Attempting build with $APP_ENV"
echo $APP_ENV > /webroot/web/app_env
echo "not building because testing without"
# /usr/bin/php ./composer.phar install --no-interaction --no-dev --no-scripts --no-progress -vvv -o
echo "end build with $APP_ENV"
