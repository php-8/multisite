<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
  tinymce.init({
    selector: '#mytextarea'
  });
  </script>
<div class="container">
  <div class="row">
    <div class="col-sm-8">

<?php if(isset($_SESSION['nologged'])): ?>
<div class="alert alert-danger alert-dismissible fade show" role="alert">
<h4 class="alert-heading">Ошибка.</h4>
<strong></strong>
  <p><?= $_SESSION['nologged']; unset($_SESSION['nologged']); ?>
  </p>
  <hr>
  <p class="mb-0"></p>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<?php endif; ?>
<?php if(isset($_SESSION['error'])): ?>
<div class="alert alert-danger alert-dismissible fade show" role="alert">
<h4 class="alert-heading">Ошибка.</h4>
<strong></strong>
  <p><?= $_SESSION['error']; unset($_SESSION['error']) ?>
  </p>
  <hr>
  <p class="mb-0"></p>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<?php endif; ?>


<h1 class="title">
<span>Форма добаления товаров из базы vce-o-printere.ru</span>
</h1>
<br>


<style type="text/css">
.title {
	font-size: 50px;
	color: #000;
	padding-left: 10px;
}
.title span {
	display: inline;
	background-color: rgba(0, 0, 0, 0.5);
	box-shadow: -10px 0 0 rgba(0, 0, 0, 0.5), 10px 0 0 rgba(0, 0, 0, 0.5);
	padding: 0 10px 0 0;
	color: #FFFFFF;
	line-height: 14px;
	font-size: 45px;
}

body {
	background: url(https://snipp.ru/img/sea.jpg) 0 0 repeat;
  background-size: cover;
}
</style>






<!-- 


<h1 class="display-4">vse-o-printere.ru</h1>
<img src="../images/panaromik.png" class="img-fluid" alt="Responsive image">
<br><br>
<p class="lead">
Форма одновременного добаления товаров на сайты:
</p> -->
<div class="row">
    <div class="col">
<a href="http://printerufa.ru" target="blank" style="color: #ffffff">printerufa.ru</a> <br>
<a href="http://printervoronezh.ru" target="blank" style="color: #ffffff">printervoronezh.ru</a> <br>
<a href="http://printersochi.ru" target="blank" style="color: #ffffff">printersochi.ru</a> <br>
<a href="http://printerivanovo.ru" target="blank" style="color: #ffffff">printerivanovo.ru</a> <br>
<a href="http://printergroznyi.ru" target="blank" style="color: #ffffff">printergroznyi.ru</a><br>
    </div>
    <div class="col">
<a href="https://printerspb.com" target="blank" style="color: #ffffff">printerspb.com</a><br>
<a href="https://printer-almaty.kz" target="blank" style="color: #ffffff">printer-almaty.kz</a><br>
    </div>
    <div class="col">
    
    </div>
    <div class="col">
    
    </div>
  </div>
<br>
<div class="inner"></div>
    </div>
    <div class="col-sm-4">

<?php if(empty($_SESSION['user']['id'])) :?>
    <div class="card">
  <div class="card-header">
    Вход
  </div>
  <div class="card-body">
    
  <form method="post" action="/main/index">
    <div class="form-group">
      <label for="exampleInputEmail1">Электронная почта</label>
      <input type="text" name="login" class="form-control <?php if(isset($_SESSION['usererror']['password'])) { echo 'is-invalid';} else { echo '';} ?>" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Электронная почта">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Пароль</label>
      <input type="password" name="password" class="form-control <?php if(isset($_SESSION['usererror']['password'])) { echo 'is-invalid';} else { echo '';} ?>" id="exampleInputPassword1" placeholder="Пароль">
      <div class="invalid-feedback">
      <?php if(isset($_SESSION['usererror']['password'])) { echo $_SESSION['usererror']['password']; unset($_SESSION['usererror']['password']);} else { echo '';} ?>
      </div>
    </div>

    <div class="form-group form-check">
      <input type="checkbox" class="form-check-input" id="exampleCheck1">
      <label class="form-check-label" for="exampleCheck1">Запомнить меня</label>
    </div>
    <button type="submit" name="submit" class="btn btn-primary" value="submit">Войти</button>
  </form>
  </div>
</div>
<br>
<?php else: ?>

<?php if(isset($_SESSION['success'])): ?>
<div class="alert alert-success alert-dismissible fade show" role="alert">
<!-- <h4 class="alert-heading">Ошибка.</h4> -->
<strong></strong>
<?= $_SESSION['success']; unset($_SESSION['success']) ?>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<?php endif; ?>

<?php if(isset($_SESSION['user']['id'])): ?>

<div class="alert alert-warning alert-dismissible fade show" role="alert">
Среди работ Цицерона есть одна, которая называется De Finibus Bonorum et Malorum («О пределах блага и зла») и датируется 45 годом до н.э. Ее текст содержит следующие слова:
«Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.»
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>

<?php endif; ?>
<br><br><br>
<?php endif; ?>
    </div>
  </div>
</div>
<script>
$('#send').click(function() {
  $.ajax({
    url: 'main/test',
    type: 'post',
    data: {'id': 2},
    success: function(res) {
      //console.log(res);

      $('.inner').append('<br>').append(res);

    },
    error: function() {
      alert('Error!');
    }
  });
});
</script>