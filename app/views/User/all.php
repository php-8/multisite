
<div class="container">
<div class="row">

<div class="col-sm-8">

<?php //print_r($_GET); ?>




<div class="card">
  <div class="card-header">
    Пользователи 
  </div>
  <div class="card-body">
<?php //print_r($allusers); 
foreach($allusers as $ket=>$value) {

        echo '<ul class="list-unstyled">';
        echo '<li class="media">';
        echo '<img src="../thumb/c_' . $value['img'] . '" class="mr-3" alt="...">';
        echo '<div class="media-body">';
        echo '<h5 class="mt-0 mb-1"><a href = "/user/userpage?userid=' . $value['MAX(u.userid)'] . '">' . $value['firstname'] . ' ' . $value['lastname'] . '</a></h5>';
        echo $value['about'] . ' ... ';
        echo '</div>';
        echo '</li><hr>';
    }

//print_r($allusers['0']['FILE_NAME']);
?>
</ul>
</div>
</div>

</div>















<div class="col-sm-4">

<div class="card bg-dark text-white">
<img src="../images/baner2.jpg" class="card-img" alt="...">
  <div class="card-img-overlay">
    <p class="card-text">
    <form>
  <div class="form-group">
    <label for="exampleFormControlInput1">Имя Фамилия</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Имя Фамилия">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Пол</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>Мужчина</option>
      <option>Женщина</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Возраст</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Страна</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>Россия</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Город</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>Волгоград</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <br>
  <center><button type="button" class="btn btn-outline-success my-2 my-sm-0">Поиск</button></center>
</form>
  </div>
</div>
</div>


</div>
</div>