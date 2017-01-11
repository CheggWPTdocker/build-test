#!/bin/sh

echo "Attempting build with $APP_ENV"
rm composer.lock
rm -rf vendor

/usr/bin/php ./composer.phar install --no-interaction --no-dev --no-scripts --no-progress -vvv -o
echo "end build with $APP_ENV"

