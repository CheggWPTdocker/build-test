#!/bin/sh

echo "writing test.php"
cat << 'EOF' > /webroot/web/test.php
RUNNING APP: <br/>
<?php
	$app = require dirname(__DIR__) . '/src/app.php';
	$app->run();
?>
<br/>END APP RUN</br>
<br/>POST_BUILD.SH APP_ENV contains: <?=readfile('app_env'); ?><br/><br/>
<br/>BUILD_SCRIPT.SH APP_ENV contains:
EOF
echo $APP_ENV >> /webroot/web/test.php
echo "end writing test.php"
