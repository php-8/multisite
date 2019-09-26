<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title></title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/sticky-footer-navbar/">
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" >
    <link href="/public/css/main.css" rel="stylesheet">
    </head>
    <body class="d-flex flex-column h-100" onLoad="init()">
    <style>
      body {
      background : #e9edf5;
      }
    </style>
<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="/">Главная</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
<?php if(!empty($_SESSION['user']['id'])): ?>
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="/set/index">Товары</a>
        </li>
        <!-- <li class="nav-item">
          <a class="nav-link" href="/updatedb/index">Наполнить базу</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/tutorial/index">Учебник</a>
        </li> -->
        <li class="nav-item">
          <a class="nav-link" href="/main/logout">Выход</a>
        </li>
      </ul>
<?php else: ?>
<ul class="navbar-nav mr-auto">
  <li class="nav-item">
      <a class="nav-link" href="/tutorial/index">Учебник</a>
  </li>
</ul>
<?php endif; ?>
    </div>
  </nav>
</header>
<br><br><br>

<?=$content?>

<div class="container">


<?php if ($_GET == null) : ?>

<?php else : ?>

<footer class="pt-4 my-md-5 pt-md-5 border-top">
    <div class="row">
      <div class="col-12 col-md">
        <img class="mb-2" src="/public/images/bootstrap-solid.svg" alt="" width="24" height="24">
        <small class="d-block mb-3 text-muted">&copy; 2017-2019</small>
      </div>
      <div class="col-6 col-md">
        <h5>Features</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Cool stuff</a></li>
          <li><a class="text-muted" href="#">Random feature</a></li>
          <li><a class="text-muted" href="#">Team feature</a></li>
          <li><a class="text-muted" href="#">Stuff for developers</a></li>
          <li><a class="text-muted" href="#">Another one</a></li>
          <li><a class="text-muted" href="#">Last time</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5>Resources</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Resource</a></li>
          <li><a class="text-muted" href="#">Resource name</a></li>
          <li><a class="text-muted" href="#">Another resource</a></li>
          <li><a class="text-muted" href="#">Final resource</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5>About</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Team</a></li>
          <li><a class="text-muted" href="#">Locations</a></li>
          <li><a class="text-muted" href="#">Privacy</a></li>
          <li><a class="text-muted" href="#">Terms</a></li>
        </ul>
      </div>
    </div>
  </footer>

<?php endif; ?>

</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="/bootstrap/js/bootstrap.bundle.min.js" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<?php
foreach($scripts as $script) {
  echo $script;
}
?>
</body>
</body>
</html>
