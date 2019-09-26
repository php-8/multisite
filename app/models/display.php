<?php

namespace app\models;

use App\models;

class display extends AppModel {


    public function __construct() {
        parent::__construct();
        //$this->dbconnect;
    }

    public function albom($sessionid) {

        try {
                $stmt = $this->dbconnect->prepare("SELECT * FROM albom WHERE USER_ID=:userid"); 
                $stmt->bindParam("userid", $sessionid, \PDO::PARAM_STR);
                $stmt->execute();
                $count=$stmt->rowCount();
                $data=$stmt->fetchAll();
                $db = null;
            if($count>0) {
                return $data;
            } else {
                $nodata = 'null';
                return $nodata;
            } 
    }
        catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
        }
    }



    public function update_user_image($userid, $img) {
        $query = $this->dbconnect->prepare("UPDATE anketa SET img = :img WHERE userid=:userid");
        $query->bindParam(':img', $img);
        $query->bindParam(':userid', $userid, \PDO::PARAM_STR);
        $query->execute();
        
    }


    public function saveuserdata($userid, $firstname, $lastname, $about) {

        $st = $this->dbconnect->prepare("SELECT * FROM anketa WHERE userid=:userid"); 
        $st->bindParam("userid", $userid, \PDO::PARAM_STR);
        $st->execute();
        $count=$st->rowCount();
        $data=$st->fetch();
        $db = null;
    if($count>0) {
        $query = $this->dbconnect->prepare("UPDATE anketa SET firstname = :firstname, lastname = :lastname, about = :about WHERE userid=:userid");
        $query->bindParam(':firstname', $firstname);
        $query->bindParam(':lastname', $lastname);
        $query->bindParam(':about', $about);
        $query->bindParam(':userid', $userid, \PDO::PARAM_STR);
        $query->execute();
    } else {
        $query = $this->dbconnect->prepare("INSERT into anketa (`userid`,`firstname`,`lastname`,`about`) VALUES(:userid,:firstname,:lastname,:about)");
        $query->bindParam(':userid', $userid);
        $query->bindParam(':firstname', $firstname);
        $query->bindParam(':lastname', $lastname);
        $query->bindParam(':about', $about);
        $query->execute();
    } 

}

    public function categories() {
        $sqlquerry = "SELECT `category_id`, `name_ru-RU` FROM qtsb9_jshopping_categories";
    try {
            $category = $this->dbconnect->prepare($sqlquerry);
            if($category->execute()) {
            $response = $category->fetchAll();
            return $response;
            } else {
            return [];
        }
    }
    catch(PDOException $e) {
    echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
}


    public function selectuserdata($sessionid) {
    try {
            $st = $this->dbconnect->prepare("SELECT * FROM anketa WHERE userid=:userid ORDER BY id DESC LIMIT 1"); 
            $st->bindParam("userid", $sessionid, \PDO::PARAM_STR);
            $st->execute();
            $count=$st->rowCount();
            $data=$st->fetch();
            $db = null;
        if($count>0) {
            return $data;
        } else {
            $nodata = 'null';
            return $nodata;
        } 
    }
    catch(PDOException $e) {
    echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
    }


    

    public function allusers() {

//$sql = "SELECT a.id, a.FILE_NAME, u.userid, u.firstname, u.lastname, u.about FROM albom a INNER JOIN anketa u ON u.userid = a.USER_ID GROUP BY a.USER_ID ORDER BY a.id DESC";
        $sql = "SELECT a.id, MAX(a.id), a.FILE_NAME, MAX(u.userid), u.firstname, u.lastname, u.about, u.img FROM anketa u INNER JOIN albom a ON u.userid = a.USER_ID WHERE a.USER_ID = u.userid GROUP BY u.userid ORDER BY a.id DESC";
        try {
                $sq = $this->dbconnect->prepare($sql);
                $sq->execute();
                if($sq !== false) {
                    return $sq->fetchAll(\PDO::FETCH_ASSOC);
                }
                return [];
            }
        catch(PDOException $e) {
        echo '{"error":{"text":'. $e->getMessage() .'}}';
        }
        }


}