<?php
	namespace HelloWorld;

	use PHP_Timer;

	class Greetings {
		public static function sayHelloWorld() {
			$timer = new PHP_Timer();
			$timer->start();
			return "Hello World\n" . $timer->resourceUsage() . "\n";
		}

		public static function sayEnvVar($env_var) {
			$timer = new PHP_Timer();
			$timer->start();
			return "Environment " . $env_var . " contains [" . getenv($env_var) . "] " . $timer->resourceUsage() . "\n";
		}
	}
