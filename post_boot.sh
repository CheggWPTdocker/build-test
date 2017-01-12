#!/bin/sh

echo "*** POST BOOT ***"

echo "post_build app_build_env: $APP_BUILD_ENV"
echo "post_build app_env: $APP_ENV"

cat << 'EOF' > /webroot/web/test.php
RUNNING APP: <br/>
<?php
	$app = require dirname(__DIR__) . '/src/app.php';
	$app->run();
?>
<br/>END APP RUN</br>
<br/>POST_BUILD.SH APP_ENV contains: <?=readfile('app_env'); ?><br/><br/>
<br/>POST_BOOT.SH APP_ENV contains:
EOF
echo $APP_ENV >> /webroot/web/test.php


echo "*** POST BOOT END ***"
