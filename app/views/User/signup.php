<div class="container">
  <div class="row">
    <div class="col-sm-8">
    <!-- Col-sm-8 -->
  <div class="alert alert-success alert-dismissible fade show" role="alert">
  <h4 class="alert-heading">Well done!</h4>
  <strong>Holy guacamole!</strong> You should check in on some of those fields below.
  <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.
  There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there
  </p>
  <hr>
  <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>






<?php if(isset($_SESSION['error'])): ?>
<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <h4 class="alert-heading">Ошибка!</h4>
<?= $_SESSION['error']; unset($_SESSION['error']) ?>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<?php endif; ?>

<?php if(isset($_SESSIO['success'])): ?>
<div class="alert alert-success alert-dismissible fade show" role="alert">
  <h4 class="alert-heading">Well done!</h4>
<?= $_SESSION['success']; unset($_SESSION['success']) ?>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<?php endif; ?>




  <div class="inner"></div>

    <!-- end Col-sm-8 -->
    
    </div>
    <!-- Col-sm-4 -->
<div class="col-sm-4">
<div class="card">
<div class="card-header">
Featured
</div>
<div class="card-body">



    
  <!-- <form method="post" action="/fw/user/signup">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password1" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password2" class="form-control" id="exampleInputPassword2" placeholder="Password">
  </div>
  <button type="submit" class="btn btn-primary" name="submit" value="submit">Отправить</button>
</form> -->




        <form method="post" action="/user/signup">
            <div class="form-group">
                <label for="login">Login</label>
                <input type="text" name="userlogin" class="form-control" id="login" placeholder="Login" value="<?=isset($_SESSION['form_data']['login']) ? h($_SESSION['form_data']['login']) : '';?>">
            </div>
            <div class="form-group">
                <label for="pasword">Password</label>
                <input type="password" name="password" class="form-control" id="pasword" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" name="email" class="form-control" id="email" placeholder="Email" value="<?=isset($_SESSION['form_data']['email']) ? h($_SESSION['form_data']['email']) : '';?>">
            </div>
            <div class="form-group">
                <label for="name">Имя</label>
                <input type="text" name="name" class="form-control" id="name" placeholder="Имя" value="<?=isset($_SESSION['form_data']['name']) ? h($_SESSION['form_data']['name']) : '';?>">
            </div>
            <button type="submit" class="btn btn-primary">Зарегистрировать</button>
        </form>
        <?php if(isset($_SESSION['form_data'])) unset($_SESSION['form_data']) ?>




  </div>
</div>
    <!-- end Col-sm-4 -->
    
    </div>
  </div>
</div>
