<?php

namespace app\controllers;

use app\models\Main;
use fw\core\App;
use fw\core\base\View;
use app\models\login;
use app\models\upload;
use app\models\display;
use Valitron\Validator;

class  MainController extends AppController  {

    //public $layout = 'main';

    public function indexAction() {

        // echo 111;
        //$this->layout = false;
        // $this->layout = 'main';
        //$this->view = 'test';
        //App::$app->getList();
        $model = new Main;
        $posts = App::$app->cache->get('posts');
        if(!$posts) {
            $posts = $model->findAll();
            App::$app->cache->set('posts', $posts, 3600 * 24);
        }

        $post = $model->findOne(2);
        $data = $model->findBySql("SELECT * FROM post ORDER by id DESC LIMIT 2");
        $find = $model->findLike('There', 'text');
        //debug($find);
        $title = 'PAGE TITLE';

        $num = uniqid().time().uniqid();

        $this->set(compact('title', 'posts', 'num'));


        if(isset($_POST['submit'])) {
            $post = $_POST;
            $user = new login;
            $user->validation($post);
            If($user->login) {
                if($user->userLogin($_POST['login'], $_POST['password'])) {
                    redirect('/set/index');
                } else {
                    redirect('/');
                }
            } else {
                //echo 'no logged';
            }
        }

        if(isset($_POST['signup'])) {
            $signup = $_POST;
            $user = new login;
            $user->signupvalidation($signup);
            If($user->login) {
                if($user->registration($_POST['login'], $_POST['password'], $_POST['email'])) {
                    redirect('/set/index');
                } else {
                    redirect('/');
                }
            } else {
                //echo 'no logged';
            }
        }


    }





    public function testviewAction() {

    }






    public function testAction() {
        
        if($this->isAjax()) {
            $model = new Main;
            $post = $model->findBySql("SELECT * FROM post WHERE id = {$_POST['id']} ORDER by id DESC");
            //debug($post);
            $this->loadView('_test', compact('post'));
            die;
        }
        $test = 'TEST ACTION';
        $this->set(compact('test'));
    }

    public function logoutAction() {
        if(isset($_SESSION['user'])) unset($_SESSION['user']);
        redirect('/');
    }





}
