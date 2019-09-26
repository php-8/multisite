<?php
namespace app\models;

use App\models;

class Create_Conversation extends AppModel {

public $pdo;
private $user_one;
private $user_two;
private $user_ip;
private $timestamp;

public function __construct ($user_one, $user_two, $user_ip, $timestamp) {
    parent::__construct();
    $this -> user_one = $user_one;
    $this -> user_two = $user_two;
    $this -> user_ip = $user_ip;
    $this -> timestamp = $timestamp;
}

public function conversid() {
    $sql ='SELECT c_id FROM conversation WHERE (user_one=:user_one and user_two=:user_two) or (user_one=:user_two and user_two=:user_one) LIMIT 1';
    $stmt = $this->dbconnect->prepare($sql);
    $stmt->execute([
        'user_one' => $this->user_one,
        'user_two' => $this->user_two
        ]);
        $data = $stmt->fetch(\PDO::FETCH_ASSOC);
        return $data;
}

public function insert() {
$sql = 'INSERT INTO conversation(user_one, user_two, ip, thetime) VALUES(:user_one, :user_two, :ip, :thetime)';
$stmt = $this->dbconnect->prepare($sql);
$stmt->execute([
    'user_one' => $this -> user_one, 
    'user_two' => $this -> user_two, 
    'ip' => $this -> user_ip, 
    'thetime' => $this -> timestamp
    ]);
return $this;
}

public function selectuser() {

    $sql ='SELECT c_id FROM conversation WHERE (user_one=:user_one and user_two=:user_two) or (user_one=:user_two and user_two=:user_one) LIMIT 1';
    $stmt = $this->dbconnect->prepare($sql);
    $stmt->execute([
        'user_one' => $this->user_one,
        'user_two' => $this -> user_two
        ]);
        $data = $stmt->fetchAll(\PDO::FETCH_ASSOC);
        return $data;
}


// public function messages($c_id) {
//     $sql = 'SELECT * FROM conversation_reply WHERE c_id_fk=:cid Order by cr_id DESC';
//     $stmt = $this->dbconnect->prepare($sql);
//     $stmt->execute([
//         'cid' => $c_id
//         ]);
//     $posts = $stmt->fetchAll();
//     return $posts;
// }

// public function insert_message($uid, $reply, $ip, $time, $cid) {
//     $sql = 'INSERT INTO conversation_reply (user_id_fk, reply, ip, thetime, c_id_fk) 
//     VALUES (:uid, :reply, :ip, :time,:cid)';
//     $stmt = $this->dbconnect->prepare($sql);
//     $stmt->execute([
//         'uid' => $uid,
//         'reply' => $reply,
//         'ip' => $ip,
//         'time' => $time,
//         'cid' => $cid
//         ]);
// }


public function select_messages ($c_id) {
    $sql = 'SELECT R.cr_id, R.thetime, R.reply, U.userid, U.firstname, U.lastname, U.img
    FROM anketa U, conversation_reply R WHERE R.user_id_fk=U.userid and R.c_id_fk=:cid 
    ORDER BY R.cr_id ASC LIMIT 20';
    $stmt = $this->dbconnect->prepare($sql);
    $stmt->execute([
        'cid' => $c_id
        ]);
    $posts = $stmt->fetchAll();
    return $posts;
}

public function myconversations($user_one) {
    $sql = 'SELECT u.userid, c.c_id, u.firstname, u.lastname, r.c_id_fk, max(r.cr_id)
    FROM conversation c, anketa u, conversation_reply r
    WHERE 
    CASE 
    WHEN c.user_one = :user_one
    THEN c.user_two = u.userid
    WHEN c.user_two = :user_one
    THEN c.user_one= u.userid
    END 
    AND (
    c.user_one = :user_one
    OR c.user_two = :user_one
    )
    AND (
       r.c_id_fk = c.c_id
    )
    GROUP BY c.c_id
    Order by  max(r.cr_id) DESC Limit 20';
   
       $stmt = $this->dbconnect->prepare($sql);
       $stmt->execute([
           'user_one' => $user_one
           ]);
       $posts = $stmt->fetchAll(\PDO::FETCH_ASSOC);
       return $posts;

}
}

