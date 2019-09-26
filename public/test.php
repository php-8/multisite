<?php

require 'rb.php';

$db = require '../config/config_db.php';

R::setup($db['dsn'], $db['user'], $db['pass']);

$cat = R::dispense('category');

$cat->title = 'Категория 2';

$id = R::store($cat);

