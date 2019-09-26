<?php
namespace app\models;

use App\models;

class Conversations extends AppModel {
    public $pdo;
    public $user_one;
        public function __consctruct() {
            parent::__construct();
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

public function insert_message($uid, $reply, $ip, $time, $cid) {
    $sql = 'INSERT INTO conversation_reply (user_id_fk, reply, ip, thetime, c_id_fk) 
    VALUES (:uid, :reply, :ip, :time,:cid)';
    $stmt = $this->dbconnect->prepare($sql);
    $stmt->execute([
        'uid' => $uid,
        'reply' => $reply,
        'ip' => $ip,
        'time' => $time,
        'cid' => $cid
        ]);
}


public function messages ($c_id) {
    $sql = 'SELECT * FROM conversation_reply WHERE c_id_fk=:cid Order by cr_id DESC';
    $stmt = $this->dbconnect->prepare($sql);
    $stmt->execute([
        'cid' => $c_id
        ]);
    $posts = $stmt->fetchAll();
    return $posts;
}




public function select_messages ($c_id) {
    $sql = 'SELECT R.cr_id, R.thetime, R.reply, R.c_id_fk, U.userid, U.firstname, U.lastname, U.img
    FROM anketa U, conversation_reply R WHERE R.user_id_fk=U.userid and R.c_id_fk=:cid 
    ORDER BY R.cr_id ASC LIMIT 20';
    $stmt = $this->dbconnect->prepare($sql);
    $stmt->execute([
        'cid' => $c_id
        ]);
    $posts = $stmt->fetchAll();
    return $posts;
}

// public function users () {
//     $sql = 'SELECT u.user_id, u.username, u.email, ui.id, ui.user_id, ui.first_name, ui.last_name, ui.age, ui.country, ui.city, ui.education, ui.gender, ui.user_picture
//     FROM users AS u
//     JOIN userinfo AS ui
//     ON u.user_id = ui.user_id';


//     //$sql = 'SELECT * FROM users';
//     $stmt = $this->dbconnect->prepare($sql);
//     $stmt->execute();
//     $users = $stmt->fetchAll();
//     return $users;
// }


// public function userpage ($user_id) {

//     $sql = 'SELECT u.user_id, u.username, u.email, ui.id, ui.user_id, ui.first_name, ui.last_name, ui.age, ui.country, ui. about, ui.city, ui.education, ui.gender, ui.user_picture
//     FROM users AS u
//     JOIN userinfo AS ui
//     WHERE ui.user_id = :user_id';
//     //ON u.user_id = ui.user_id';


//     //$sql = 'SELECT * FROM users WHERE user_id = :user_id';
//     $stmt = $this->dbconnect->prepare($sql);
//     $stmt->execute([
//         'user_id' => $user_id
//     ]);
//     $users = $stmt->fetch();
//     return $users;
// }

public function lastconversationid($user__id) {
    $sql = 'SELECT c_id FROM conversation WHERE user_one=:user_id OR user_two=:user_id Order by c_id DESC LIMIT 1';
    $stmt = $this->dbconnect->prepare($sql);
    $stmt->execute([
        'user_id' => $user__id
    ]);
    $u = $stmt->fetch();
    return $u;
}



}











