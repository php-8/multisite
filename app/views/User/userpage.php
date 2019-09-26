
<!-- <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

 -->

 <link rel="stylesheet" type="text/css" href="/bootstrap/lightbox-gallery-blurred/jquery.lightbox.css">
 <style>
    .gallery {
        list-style: none;
        overflow: hidden;
        padding: 0;
        margin: 1px;
    }
    
    .gallery li {
        float: left;
        margin: 0px;
    }
</style>




<div class="container">
  <div class="row">
    <div class="col-sm-4">

    <div class="card">
  <img src="
  

<?php
if(is_array($data)){
$photo = array_pop($data); 
echo '../albom/' . $photo['FILE_NAME'];
} else {
echo '../albom/albom.png';
}
?>

  " class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">
    <?php
if(is_array($userdata)){
  echo $userdata['firstname'] . ' ' . $userdata['lastname'];
} else {
echo '';
}
?>
    <!-- <div class="float-right"  data-toggle="modal" data-target="#modalanketa">
<img src="../images/edit.png" width="20" height="20" title="Редактировать">
</div> -->
    </h5>
    <p class="card-text">
    

    <?php
if(is_array($userdata)){
  echo $userdata['about'] ;
} else {
echo '';
}
?>
    </p>
<br>

<form method="get" action="/messages/newmessage">
<input type="hidden" name="send" value="message">
<button type="submit" class="btn btn-primary" name="userid" value="<?=$_GET['userid']?>">Сообщение</button>
</form>
  </div>
</div>
<!-- <ul class="list-group">
  <li class="list-group-item list-group-item-primary d-flex justify-content-between align-items-center">A simple primary list group item<span class="badge badge-primary badge-pill">12</span></li>
  <li class="list-group-item list-group-item-secondary d-flex justify-content-between align-items-center">A simple secondary list group item<span class="badge badge-primary badge-pill">3</span></li>
  <li class="list-group-item list-group-item-success d-flex justify-content-between align-items-center">A simple success list group item<span class="badge badge-primary badge-pill">56</span></li>
  <li class="list-group-item list-group-item-danger d-flex justify-content-between align-items-center">A simple danger list group item<span class="badge badge-primary badge-pill">12</span></li>
  <li class="list-group-item list-group-item-warning d-flex justify-content-between align-items-center">A simple warning list group item<span class="badge badge-primary badge-pill">67</span></li>
  <li class="list-group-item list-group-item-info d-flex justify-content-between align-items-center">A simple info list group item<span class="badge badge-primary badge-pill">42</span></li>
  <li class="list-group-item list-group-item-dark d-flex justify-content-between align-items-center">A simple dark list group item<span class="badge badge-primary badge-pill">95</span></li>
</ul> -->

<br>
</div>

<div class="col-sm-8">
<div class="card bg-light mb-3">
  <div class="card-header">Strem <small id="status"></small></div>
  <div class="card-body">
    <!-- <h5 class="card-title"></h5>
    <p class="card-text"></p> -->


    <div class="row">
    <div class="col-sm-8" >

<div id="remoteVideo" class="img-fluid" style="width:420px; height:240px; background:url('../images/nosignal.gif'); border: 0px double black;"> 
</div>
<br>
<button type="button" class="btn btn-outline-success btn-sm" onClick="start()">start</button>
<button type="button" class="btn btn-outline-danger btn-sm" onClick="stop()">stop</button>
<p class="card-text"></p>
<p class="card-text"></p>

    </div>
    <div class="col-sm-4">
    <!-- <p id="status"></p> -->
    </div>
  </div>


  </div>
</div>






<!-- 
<div class="card bg-dark text-white">
  <img src="../images/maxresdefault.jpg" class="card-img" alt="...">
  <div class="card-img-overlay">
    <h5 class="card-title">Card title
    <div class="float-right">
<img src="../images/edit.png" width="20" height="20" title="Редактировать">
</div>
    <div class="float-right"  data-toggle="modal" data-target="#exampleModal">
<img src="../images/edit.png" width="20" height="20" title="Редактировать">
</div>
    </h5>
    <div id="remoteVideo" style="width:320px;height:240px;border: 1px solid"></div>
<input type="button" value="start" onClick="start()"/>
<p id="status"></p>

    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    <p class="card-text">Last updated 3 mins ago</p>
  </div>
</div> -->












<div class="card text-white bg-secondary mb-3">
<div class="card-header">Галерея
<!-- <div class="float-right"  data-toggle="modal" data-target="#exampleModal">
<img src="../images/edit.png" width="20" height="20" title="Редактировать">
</div> -->

</div>
  <div class="card-body">
  <div class="grid">
  <ul class="gallery">
<?php 
if($data>0) {
  foreach($data as $value) {
    echo '<li>';
    echo '<a';
    echo ' href="';
    echo '../albom/' . $value['FILE_NAME'];
    echo '">';
    echo '<img  src="';
    echo '../thumb/c_' . $value['FILE_NAME'];
    echo '"/>';
    echo '</a>';
    echo '</li>';
  }
  echo '<li>';
  echo '<a href="../albom/' . $photo['FILE_NAME'] . '">';
  echo '<img  src="../thumb/c_' . $photo['FILE_NAME'] . '"/>';
  echo '</a>';
  echo '</li>';
} else {
  echo '';
}
?>
</ul>

    </div>
  </div>
</div>




<!-- <div class="card text-white bg-dark mb-3">
  <div class="card-header">Header
  </div>
  <div class="card-body">
    <h5 class="card-title">Dark card title</h5>
    <p class="card-text">
    <div class="media">
  <img src="../images/test.png" class="align-self-start mr-3" alt="...">
  <div class="media-body">
    <h5 class="mt-0">Top-aligned media</h5> 
    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
  </div>
</div>
    <p>Some quick example text to build on the card title and make up the bulk of the card's content. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
  </div>
</div>


<div class="card text-white bg-secondary mb-3">
  <div class="card-header">Header
  </div>
  <div class="card-body">
    <h5 class="card-title">Secondary card title</h5>
    <p class="card-text">
    Where does it come from?
Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
    </p>
  </div>
</div> -->


<br>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Загрузить файлы</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="" method="POST" enctype="multipart/form-data">
	    <input type="file" name="files[]" multiple/>
	    <!-- <input type="submit"/> -->
      <button type="submit" name="submit" class="btn btn-primary" value="submit">Сохранить</button>
      <form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
      </div>
    </div>
  </div>
</div>




<div class="modal fade" id="modalanketa" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalanketa">Редактировать анкету</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="/userpage/index" method="POST">

      <div class="form-group">
                <label for="login">Имя</label>
                <input type="text" name="firstname" class="form-control " id="" placeholder="Имя" value="">
                <div class="invalid-feedback">
                </div>
            </div>

            <div class="form-group">
                <label for="login">Фамилия</label>
                <input type="text" name="lastname" class="form-control" id="" placeholder="Фамилия" value="">
                <div class="invalid-feedback">
                </div>
            </div>

            <div class="form-group">
                <label for="login">Описание</label>
                <textarea class="form-control" name="userinfo" id="">

                </textarea>
                <div class="invalid-feedback">
                </div>
            </div>
            <button type="submit" name="save" class="btn btn-primary" value="save">Сохранить</button>
      </form>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>



<?php 

if(isset($_POST['save'])) {
  print_r($_POST);
}
?>








</div>
</div>
</div>




<script type="text/javascript" src="/bootstrap/gridify/jquery/jquery-1.11.1.min.js"></script>
<!-- <script type="text/javascript" src="/bootstrap/gridify/jquery/gridify.js"></script> -->
<script src="/bootstrap/lightbox-gallery-blurred/jquery.lightbox.js"></script>

    <script type="text/javascript">
        $(window).load(function() {
            var options =
            {
                srcNode: 'img',             // grid items (class, node)
                margin: '4px',             // margin in pixel, default: 0px
                width: '71px',             // grid item width in pixel, default: 220px
                max_width: '',              // dynamic gird item width if specified, (pixel)
                resizable: true,            // re-layout if window resize
                transition: 'all 0.5s ease' // support transition for CSS3, default: all 0.5s ease
            }
            $('.grid').gridify(options);
        });
    </script>



<script>
  // Initiate Lightbox
  $(function() {
    $('.gallery a').lightbox(); 
  });
</script>