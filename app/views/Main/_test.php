<?php //echo $test; ?>



<div class="card">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    

  <?php
foreach($post as $k => $v) {
    echo $v['title'];
    echo '<br><br>';
    echo $v['text'];
    echo '<br><hr>';
}
?>


  </div>
</div>

