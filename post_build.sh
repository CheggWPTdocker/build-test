#!/bin/sh

echo "Attempting build with $APP_ENV"
cd /webroot
/usr/bin/php ./composer.phar install --no-interaction -vvv -o
echo "end build with $APP_ENV"

