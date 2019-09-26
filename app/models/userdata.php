<?php

namespace app\models;

use App\models;

class userdata extends AppModel {


    public function __construct() {
        parent::__construct();
    }

    public function saveuserdata($userid, $firstname, $lastname, $about) {
    try {
            //$sql = "INSERT into anketa (`firstname`,`lastname`,`about`) VALUES(:firstname,:lastname,:about)";
            $query = $this->dbconnect->prepare("INSERT into anketa (`userid`,`firstname`,`lastname`,`about`) VALUES(:userid,:firstname,:lastname,:about)");
            $query->bindParam(':userid', $userid);
            $query->bindParam(':firstname', $firstname);
            $query->bindParam(':lastname', $lastname);
            $query->bindParam(':about', $about);
            $query->execute();
        }
    catch(PDOException $e) {
    echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
    }



    // public function selectuserdata($sessionid) {
    // try {
    //         $st = $this->dbconnect->prepare("SELECT * FROM anketa WHERE USER_ID=:userid"); 
    //         $st->bindParam("userid", $sessionid, \PDO::PARAM_STR);
    //         $st->execute();
    //         $count=$st->rowCount();
    //         $data=$st->fetchAll();
    //         $db = null;
    //     if($count>0) {
    //         return $data;
    //     } else {
    //         $nodata = 'null';
    //         return $nodata;
    //     } 
    // }
    // catch(PDOException $e) {
    // echo '{"error":{"text":'. $e->getMessage() .'}}';
    // }
    // }

}