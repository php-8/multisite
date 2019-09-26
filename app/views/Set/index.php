<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
var mentionsFetchFunction = function (query, success) {
  var users = [
  ];
  users = users.map(function (fullName) {
    var userName = fullName.replace(/ /g, '').toLowerCase();

    return {
      id: userName,
      name: userName,
      fullName: fullName
    }
  });

  users = users.filter(function (user) {
    return user.name.indexOf(query.term) === 0
  });

  success(users)
};

tinymce.init({
  selector: 'textarea#full-featured',
  plugins: 'print preview fullpage searchreplace autolink directionality visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists wordcount imagetools textpattern help ',
  toolbar: 'formatselect | bold italic strikethrough forecolor backcolor permanentpen formatpainter | link image media pageembed | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent | removeformat | addcomment',
  image_advtab: true,
  content_css: [
    '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
    '//www.tiny.cloud/css/codepen.min.css'
  ],
  link_list: [
    { title: 'My page 1', value: 'http://www.tinymce.com' },
    { title: 'My page 2', value: 'http://www.moxiecode.com' }
  ],
  image_list: [
    { title: 'My page 1', value: 'http://www.tinymce.com' },
    { title: 'My page 2', value: 'http://www.moxiecode.com' }
  ],
  image_class_list: [
    { title: 'None', value: '' },
    { title: 'Some class', value: 'class-name' }
  ],
  importcss_append: true,
  height: 400,
  file_picker_callback: function (callback, value, meta) {
    /* Provide file and text for the link dialog */
    if (meta.filetype === 'file') {
      callback('https://www.google.com/logos/google.jpg', { text: 'My text' });
    }

    /* Provide image and alt text for the image dialog */
    if (meta.filetype === 'image') {
      callback('https://www.google.com/logos/google.jpg', { alt: 'My alt text' });
    }

    /* Provide alternative source and posted for the media dialog */
    if (meta.filetype === 'media') {
      callback('movie.mp4', { source2: 'alt.ogg', poster: 'https://www.google.com/logos/google.jpg' });
    }
  },
  templates: [
    { title: 'Some title 1', description: 'Some desc 1', content: 'My content' },
    { title: 'Some title 2', description: 'Some desc 2', content: '<div class="mceTmpl"><span class="cdate">cdate</span><span class="mdate">mdate</span>My content2</div>' }
  ],
  template_cdate_format: '[CDATE: %m/%d/%Y : %H:%M:%S]',
  template_mdate_format: '[MDATE: %m/%d/%Y : %H:%M:%S]',
  image_caption: true,
  spellchecker_dialog: true,
  spellchecker_whitelist: ['Ephox', 'Moxiecode'],
  tinycomments_mode: 'embedded',
  mentions_fetch: mentionsFetchFunction,
  content_style: '.mce-annotation { background: #fff0b7; } .tc-active-annotation {background: #ffe168; color: black; }'
 });
</script>




<script src="/ckeditor/ckeditor.js"></script>


<div class="container">
<?php if(isset($_SESSION['user']['id'])): ?>
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
  Товары без изображения не добавляются в базу.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
    </div>
<div class="col-sm-8">

<div class="card bg-light mb-3">
  <div class="card-header">
  Добавить товар
  </div>
  <div class="card-body">
    <h5 class="card-title"></h5>
    <p class="card-text"></p>
<form action="" method="post" enctype="multipart/form-data">

  <div class="form-group row">
  <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Название </label>
    <div class="col-sm-10">
      <input type="text" class="form-control form-control-sm" name="name" id="" placeholder="название">
    </div>
    <br><br>
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Translit </label>
    <div class="col-sm-10">
      <input type="text" class="form-control form-control-sm" name="translit" id="" placeholder="транслит">
    </div>
    <br><br>
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Описание: </label>
    <div class="col-sm-10">
    <input type="text" class="form-control form-control-sm" name="short_description" id="" placeholder="короткое описание">
  </div>
  <br><br>
  <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Описание: </label>
    <div class="col-sm-10">
    <textarea class="ckeditor" name="description" tabindex="12"></textarea>
    <!-- <textarea class="form-control form-control-sm" id="full-featured" name="description" rows="20"></textarea> -->
    <!-- <textarea class="form-control" id="exampleFormControlTextarea1" name="description" rows="5"></textarea> -->
    <br>
    </div>

    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Заголовок</label>
    <div class="col-sm-10">
    <input type="text" class="form-control form-control-sm" name="meta_title" id="" placeholder="мета заголовок">
  </div>
  <br><br>

  <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Описание</label>
    <div class="col-sm-10">
    <input type="text" class="form-control form-control-sm" name="meta_description" id="" placeholder="мета описание">
  </div>
  <br><br>

  <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Ключи</label>
    <div class="col-sm-10">
    <input type="text" class="form-control form-control-sm" name="meta_keywords" id="" placeholder="мета ключивые слова">
  </div>
  <br><br>

  <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Цена</label>
    <div class="col-sm-10">
      <input type="text" class="form-control form-control-sm" name="price" id="" placeholder="цена">
    </div>
    <br><br>

    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Колличество</label>
    <div class="col-sm-10">
      <input type="text" class="form-control form-control-sm" name="amount" id="" placeholder="колличество">
    </div>
    <br><br>

    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Категория</label>
    <div class="col-sm-10">
<select id="inputState" name="category" class="form-control form-control-sm">
<?php 
foreach($values as $key => $value) {
  echo '<option value="' . $value['category_id'] . '">';
  echo $value['name_ru-RU'];
  echo '</option>';
}
?>
</select>
    </div>
    <br><br>

  <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Картинка</label>
    <div class="col-sm-10">
    <input type="file" class="form-control-file" name="upfile[]" id="exampleFormControlFile1" multiple="multiple">
  </div>
  <br><br>
  
  <input type="hidden" name="method" value="insertitemandfile">
  <input type="hidden" name="product_template" value="default">
  <input type="hidden" name="token" value="create">
  <!-- <input type="hidden" name="img" value="testing.jpg"> -->
  
  <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm"></label>
    <div class="col-sm-10">
  <button type="submit" name="submit" value="Upload File" class="btn btn-primary">Отправить</button>
  </div>
  <br><br>
</form>


<!-- <form action="" method="post" enctype="multipart/form-data">
    <input type="text" name="demo">
    <input type="text"  name="test">
    <input type="file" name="upfile[]" multiple="multiple">
    <input type="submit" value="Upload File" name="submitfile">
</form> -->

</div>
</div>
<br><br>


<?php
echo '<pre>';
//print_r($values);
echo '<pre>';

if(isset($_POST['submit'])) {
   echo '<pre>';
//   print_r($_POST);
//   echo '<br>';
//  print_r($_POST);
  echo '</pre>';
echo '<pre>';
//print_r($file);
echo '<br>';



echo '</pre>';
}
?>
<?php else: ?>

<center>
<h1 class="display-4">Ошибка.</h1><br>
<img src="../images/271dc84f86eb04726a3b4bd233e2c4b9.png" class="img-fluid" alt="Responsive image">
</center>

<?php endif; ?>

</div>
</div>
</div>





