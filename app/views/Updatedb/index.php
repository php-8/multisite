<?php if(isset($_SESSION['user']['id'])): ?>

<div class="container">
  <div class="row">
    <div class="col-sm-4">

    <div class="list-group">
  <a href = "/set/index" role="button" class="list-group-item list-group-item-action">Добавить товар</button></a>
  <a href = "/updatedb/index" role="button" class="list-group-item list-group-item-action">Обновить базу</button></a>
  <a href = "/updatedb/PriceAndQuantity" role="button" AndQuantity" class="list-group-item list-group-item-action">Колличество и цены</button></a>
</div>
<!-- <div class="alert alert-light" role="alert">
<img src="../images/printer.png" class="img-fluid" alt="Responsive image">
</div> -->
<br>
<div class="alert alert-info alert-dismissible fade show" role="alert">
<strong>Внимание!</strong><br>
  В поле product id нужно указать id товара с которого начинается выгрузка на vce-o-printere
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>

<div class="alert alert-light" role="alert">
    <img src="../images/db.gif" class="img-fluid" alt="Responsive image">
</div>


    </div>
    <div class="col-sm-8">

    <div class="card bg-light mb-3">
  <div class="card-header">
  Наполнение базы данных
  </div>
  <div class="card-body">
    <h5 class="card-title"></h5>
    <p class="card-text"></p>

    <form action="" method="post">
  <div class="form-group row">
  <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Server url: </label>
    <div class="col-sm-10">
      <input type="text" name="server" class="form-control form-control-sm" id="colFormLabelSm" placeholder="http://vse-o-printere.ru/administrator/api/server.php" readonly>
    </div>
<br><bR>
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Receiver url: </label>
    <div class="col-sm-10">
      <input type="text" name="receiver" class="form-control form-control-sm" id="colFormLabelSm" placeholder="http://sitename.ru/administrator/api/receiver.php">
    </div>
<br><bR>
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Product id: </label>
    <div class="col-sm-10">
      <input type="text" name="productid" class="form-control form-control-sm" id="colFormLabelSm" placeholder="первый id">
    </div>
<br><bR>
<label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Город: </label>
    <div class="col-sm-10">
      <input type="text" name="city" class="form-control form-control-sm" id="colFormLabelSm" placeholder="Meta tag">
    </div>
<br><bR>
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm"> </label>
    <div class="col-sm-10">
    <button type="submit" name="start" value="Go!" class="btn btn-primary btn-sm">Start</button>
  </div>
  </div>
  </form>

  </div>
</div>

<?php

echo '<br>';

if(isset($_POST['start'])) {

// echo '<pre>';
//   print_r($images);
// echo '</pre>';
// echo '<hr>';
// echo '<pre>';

print_r($output_products);


 //print_r($imagesdata);
// echo '<hr>';
// print_r($originalid);

// echo '</pre>';
// echo '<br>';

//   $pieces = explode("},", $output_products);
//   foreach($pieces as $item) {
//     $array = json_decode($item, True);
//     echo '<pre>';
//     print_r($array['data']['lastinsertid']);
//     echo '<br>';
//     print_r($array['data']['originalid']);
//     echo '</pre>';
//   }
}
?>

</div>
</div>
</div>

<?php else: ?>

<center>
<h1 class="display-4">Ошибка.</h1><br>
<img src="../images/271dc84f86eb04726a3b4bd233e2c4b9.png" class="img-fluid" alt="Responsive image">
</center>

<?php endif; ?>