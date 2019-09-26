<?php
date_default_timezone_set('Europe/Moscow');
use fw\core\Router;

$query = rtrim($_SERVER['QUERY_STRING'], '/');

define("DEBUG", 1);
define('WWW', __DIR__);
define('CORE', dirname(__DIR__) . '/vendor/fw/core');
define('ROOT', dirname(__DIR__));
define('APP', dirname(__DIR__) . '/app');
define('LIBS', dirname(__DIR__) . '/vendor/fw/libs');
define('CACHE', dirname(__DIR__) . '/tmp/cache');
define('LAYOUT', 'default');
define('ADMIN', 'http://localhost/fw/admin');

require '../vendor/fw/libs/functions.php';
require '../vendor/fw/libs/rb.php';
require __DIR__ . '/../vendor/autoload.php';

// spl_autoload_register(function($class) {
//     $file = ROOT . '/' . str_replace('\\', '/', $class) . '.php';
//     if(is_file($file)) {
//     require_once $file;
// }
// });

new \fw\core\App;
//Router::add('^user/(?P<action>[a-z-]+)/(?P<alias>[1-9a-z-]+)?$', ['controller' => 'user']);

Router::add('^page/(?P<action>[a-z-]+)/(?P<alias>[a-z-]+)?$', ['controller' => 'Page']);
Router::add('^page/(?P<alias>[a-z-]+)?$', ['controller' => 'Page', 'action' => 'view']);

Router::add('^admin$', ['controller' => 'Main', 'action' => 'index', 'prefix' => 'admin']);
Router::add('^admin/?(?P<controller>[a-z-]+)/?(?P<action>[a-z-]+)?$', ['prefix' => 'admin']);

Router::add('^$', ['controller' => 'Main', 'action' => 'index']);
Router::add('^(?P<controller>[a-z-]+)/?(?P<action>[a-z-]+)?$');

//Router::add('<controller:[a-z-]+>/<action:[a-z]+>'); 

Router::dispatch($query);