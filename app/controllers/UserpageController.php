<?php

namespace app\controllers;

use fw\core\App;
use fw\core\base\View;
use app\models\upload;
use app\models\display;
use app\models\userdata;
use Valitron\Validator;

class  UserpageController extends AppController  {

    //public $layout = 'main';
    public $lastfile;

    public function indexAction() {

        $name = 'TEST ACTION';
        //$data = $model->findBySql("SELECT * FROM post ORDER by id DESC");

        if(isset($_POST['submit_files'])) {

            if(isset($_FILES['files'])){
                $errors= array();
                foreach($_FILES['files']['tmp_name'] as $key => $tmp_name ){
                    $file_name = $key.$_FILES['files']['name'][$key];
                    $file_size =$_FILES['files']['size'][$key];
                    $file_tmp =$_FILES['files']['tmp_name'][$key];
                    $file_type=$_FILES['files']['type'][$key];	
                    $user_id = $_SESSION['user']['id'];
                    if($file_size > 2097152){
                        $errors[]='File size must be less than 2 MB';
                    } else  {	
                    $upload = new Upload($file_name, $file_size, $file_tmp, $file_type, $user_id);
                    $upload->uploadFiles();
                    $this->lastfile = $upload->filenames;
                    }
                }
            }
        }


        if(isset($_POST['save'])) {
            $savedata = new display;
            $savedata->saveuserdata($_SESSION['user']['id'], $_POST['firstname'], $_POST['lastname'], $_POST['userinfo']);
            redirect('/userpage/index');
        }




        $albom = new display;
        if(isset($_SESSION['user']['id'])) {
            $userid = $_SESSION['user']['id']; 
        } else {
            $userid = '1';
        }


        $data = $albom->albom($userid); 

        $userdata = $albom->selectuserdata($userid); 

        if(isset($_POST['submit_files'])) {
        //$updateimg = new display;
        $albom->update_user_image($_SESSION['user']['id'], $this->lastfile);
        }


        function status($value) {
            echo $value;
        }

        $this->set(compact('userdata', 'data'));
    }
    
    public function userdataAction() {
        if(isset($_POST['save'])) {
            $savedata = new userdata;
            $savedata->saveuserdata($_POST['firstname'], $_POST['lastname'], $_POST['userinfo']);
            redirect('/userpage/index');
        }
    }


}
