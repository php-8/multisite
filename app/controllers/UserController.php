<?php

namespace app\controllers;

use app\models\User;

use fw\core\base\View;

use app\models\Main;

use app\models\display;

class UserController extends AppController {

    public function AllAction() {
        $users = new display();
        $allusers = $users->allusers();
        $this->set(compact('allusers'));
    }

    public function userpageAction() {
        $albom = new display;
        if(isset($_GET['userid'])) {
            $userid = $_GET['userid']; 
        } else {
            $userid = '1';
        }
        $data = $albom->albom($userid); 
        $userdata = $albom->selectuserdata($userid); 
        $this->set(compact('userdata', 'data'));
    }

    public function logoutAction(){
        if(isset($_SESSION['user'])) unset($_SESSION['user']);
        redirect('/user/login');
    }

}