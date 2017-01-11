#!/bin/sh

echo "Attempting build"
cd /webroot
/usr/bin/php ./composer.phar install --no-dev -vvv

