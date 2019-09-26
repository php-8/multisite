<?php

// print_r($c_id);
// echo '<br>';
// print_r($messages);

?>



<style>
.main {
  overflow: auto;
  overflow-x: hidden;
}

::-webkit-scrollbar-button { 
background-image:url(''); 
background-repeat:no-repeat; 
width:6px; 
height:0px 
} 

::-webkit-scrollbar-track { 
background-color:#c5c9ce; 
box-shadow:0px 0px 3px #000 inset; 
} 

::-webkit-scrollbar-thumb { 
-webkit-border-radius: 5px; 
border-radius: 5px; 
background-color:#4e5052; 
box-shadow:0px 1px 1px #fff inset; 
background-image:url('https://yraaa.ru/_pu/24/59610063.png'); 
background-position:center; 
background-repeat:no-repeat; 
} 

::-webkit-resizer{ 
background-image:url(''); 
background-repeat:no-repeat; 
width:7px; 
height:0px 
} 

::-webkit-scrollbar{ 
width: 11px; 
}



</style>

<div class="container">
  <div class="row">
<div class="col-sm-8">

<?php //debug($c_id); ?>

<?php //debug($v); ?>

<div class="card text-white bg-secondary mb-3" >
  <div class="card-header">Сообщения</div>
  <div class="card-body" >
  <!-- <div class="comments col-md-9" id="comments"> -->
  <div class="main" style="height: 500px;">
  <div class="comments main" id="comments">
            <!-- comment -->
   

          
            <?php

foreach($messages as $key=>$value) {
    
    echo '<div class="comment mb-2 row">';
    echo '<div class="comment-avatar col-md-1 col-sm-2 text-center pr-1" >';
        echo '<img class="mx-auto rounded img-fluid" style="border: 1px solid black;"  src="/public/thumb/c_' .  $value['img'] .'" alt="avatar">';
        echo '</div>';
    echo '<div class="comment-content col-md-11 col-sm-10" >';
        echo '<h6 class="small comment-meta"><a href="/user/userpage?userid=' .  $value['userid'] .'" target="blank" class="text-reset">' .  $value['firstname'] . ' ' . $value['lastname'] . '</a>' . ' <small class="text-white">' . ' ' . date('d.m H:i', $value['thetime']) . '</small></h6>';
        echo '<div class="comment-body">';

        echo '<div class="alert alert-secondary" role="alert" style="border: 1px solid black; ">';
        echo $value['reply'];
         //echo '<a href="" class="text-right small"><i class="ion-reply"></i> Reply</a>';
      echo '</div>';

 
        echo '</div>';
    echo '</div>';
echo '</div>';

}
?>






            <!-- /comment -->
            <div class="row pt-2">
                <div class="col-12">
                    <!-- <a href="" class="btn btn-sm btn-primary">Comment</a> -->
                </div>
            </div>
        </div>
        </div>
    <!-- <br><br><br><br><br> -->
    </p>
  </div>
  <div class="card-footer">
<form method="post" action="/messages/index"> 
<div class="input-group mb-3">
  <input type="text" name="newmessage" class="form-control" placeholder="" aria-label="Recipient's username" aria-describedby="button-addon2">
  <input type="hidden" name="c_id" name="value" value="<?=$c_id?>">
  <div class="input-group-append">
    <button class="btn btn-outline-warning" name="message" value="send" type="input" id="button-addon2">Отправить</button>
  </div>
</div>
</form>
  </div>
</div>

<br>

</div>
<div class="col-sm-4">


<div class="list-group">
  

<div class="list-group">
<form method="get" action="/messages/index">
<?php
foreach($myconver as $k=>$v) {
    if(isset($_GET['c_id'])  === $v['c_id'] || $c_id === $v['c_id']) { 
        $activate = 'active'; 
    }  else {
        $activate = '';
    }
    echo '<button type="submit" name="c_id" value="' . $v['c_id'] . '" class="list-group-item list-group-item-dark list-group-item-action' . ' ' . $activate . ' ' . 'd-flex justify-content-between align-items-center">'. $v['firstname']. ' ' . $v['lastname'] . '<span class="badge badge-primary badge-pill"></span></button>';
}
?>
</form>
  <!-- <button type="button" class="list-group-item list-group-item-action active">Cras justo odio</button>
  <button type="button" class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Dapibus ac facilisis in<span class="badge badge-primary badge-pill">14</span></button>
  <button type="button" class="list-group-item list-group-item-action">Morbi leo risus</button>
  <button type="button" class="list-group-item list-group-item-action">Porta ac consectetur ac</button>
  <button type="button" class="list-group-item list-group-item-action" disabled>Vestibulum at eros</button>
 -->
</div>
</div>



<br>
</div>
    </div>
  </div>








