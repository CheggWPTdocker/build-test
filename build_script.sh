#!/bin/sh

echo "writing test.php"

cat << 'EOF' > /webroot/web/test.php
<?php
	$app = require dirname(__DIR__) . '/src/app.php';
	$app->run();
?>
<br/>
Docker Buildscript APP_ENV contains:
EOF

echo $APP_ENV >> /webroot/web/test.php

cat << 'EOF' >> /webroot/web/test.php

dockerfile 
<?php
	readfile('app_env');
?>
<br/>
Docker Buildscript APP_ENV contains:
EOF

echo "end writing test.php"
