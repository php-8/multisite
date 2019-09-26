<?php

namespace app\models;

use Valitron\Validator;

use App\models;

class login extends AppModel {

    protected $pdo;
    protected $rules = [
        'required' => [
            ['login'],
            ['password'],
        ],
        'lengthMin' => [
            ['password', 6],
        ]
    ];
    public $login;

    public function __construct() {
        parent::__construct();
    }

    public function validation($data) {


        Validator::langDir(WWW . '/valitron/lang');
        Validator::lang('ru');
        $v = new Validator($data);
        $v->rules($this->rules);
        $v->rule('email', 'login');
        if($v->validate()) {
            $success = 'Вы успешно авторизованы';
            $_SESSION['success'] = $success;
            $this->login = true;
            $_SESSION['success_1'] = $this->login;
            //redirect('/fw/main/testview');

        } else {
            $this->errors = $v->errors();
            $errors = '<ul>';
            foreach($this->errors as $error){
                foreach($error as $item){
                    $errors .= "<li>$item</li>";
                }
            }
            $errors .= '</ul>';
            $_SESSION['error'] = $errors;
            return false;
        }
    }

    public function signupvalidation($data) {


        Validator::langDir(WWW . '/valitron/lang');
        Validator::lang('ru');
        $v = new Validator($data);
        $v->rule('required', ['login', 'email', 'password']);
        $v->rule('email', 'email');
        $v->rule('different', 'login', 'password');
        $v->rule('lengthMin', 'login', 5);
        $v->rule('lengthMin', 'password', 6);
        if($v->validate()) {
            $success = 'Вы успешно авторизованы';
            $_SESSION['success'] = $success;
            $this->login = true;
            $_SESSION['success_1'] = $this->login;
            //redirect('/fw/main/testview');

        } else {
            $this->errors = $v->errors();
            $errors = '<ul>';
            foreach($this->errors as $error){
                foreach($error as $item){
                    $errors .= "<li>$item</li>";
                }
            }
            $errors .= '</ul>';
            $_SESSION['error'] = $errors;
            return false;
        }
    }

    public function checkUnique(){
    }

    public function userLogin($usernameEmail, $password) {

    try {
            $stmt = $this->dbconnect->prepare("SELECT id FROM user WHERE email=:usernameEmail AND password=:hash_password"); 
            $stmt->bindParam("usernameEmail", $usernameEmail, \PDO::PARAM_STR);
            //$stmt->bindParam("hash_password", $hash_password,PDO::PARAM_STR);
            $stmt->bindParam("hash_password", $password, \PDO::PARAM_STR);
            $stmt->execute();
            $count=$stmt->rowCount();
            $data=$stmt->fetch(\PDO::FETCH_OBJ);
            $db = null;
        if($count) {
            $_SESSION['user']['id'] = $data->id; // Storing user session value
            return true;
        } else {
            $_SESSION['usererror']['password'] = 'Неправильный логин или пароль';
            return false;
        } 
}
    catch(PDOException $e) {
    echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}

    public function registration ($username, $password, $email) {

        try {
            $st = $this->dbconnect->prepare("SELECT userlogin, email FROM user WHERE userlogin=:userlogin OR email=:email"); 
            $st->bindParam("userlogin", $username, \PDO::PARAM_STR);
            $st->bindParam("email", $email, \PDO::PARAM_STR);
            $st->execute();
            $count=$st->rowCount();
            $usererror = $st->fetch(\PDO::FETCH_OBJ);
            // $_SESSION['usererror']['email'] = $usererror->email;
            // $_SESSION['usererror']['login'] = $usererror->userlogin;
        if($count<1) {
            $stmt = $this->dbconnect->prepare("INSERT INTO user (userlogin,password,email) VALUES (:userlogin,:password,:email)");
            $stmt->bindParam("userlogin", $username, \PDO::PARAM_STR) ;
            $stmt->bindParam("password", $password, \PDO::PARAM_STR) ;
            $stmt->bindParam("email", $email, \PDO::PARAM_STR);
            $stmt->execute();
            $uid = $this->dbconnect->lastInsertId(); // Last inserted row id
            $_SESSION['user']['id'] = $uid;
            return true;
        } else {
            if($usererror->email === $email) { $_SESSION['usererror']['email'] = $usererror->email; }
            if($usererror->userlogin === $username) { $_SESSION['usererror']['login'] = $usererror->userlogin; }
            return false;
        }
            } 
            catch(PDOException $e) {
            echo '{"error":{"text":'. $e->getMessage() .'}}'; 
            }
    }

    public static function isAdmin(){
        return (isset($_SESSION['user']) && $_SESSION['user']['role'] == 'admin');
    }
}