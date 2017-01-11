<?php

    require_once dirname(__DIR__) . '/vendor/autoload.php';
    
    use HelloWorld\Greetings;

    class App {
    
        public function run()
        {
            echo Greetings::sayHelloWorld();
            echo "<br/>";
            echo Greetings::sayEnvVar('APP_ENV');
            echo "<br/>";
            echo "end";
            echo "<br/>";
            return true;
        }
    }

    $app = new App();
    return $app;
