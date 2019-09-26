<?php
namespace app\controllers;
use app\models\Create_Conversation;
use app\models\all_conversation;

class MessagesController extends AppController {

    public $almessages;
    public $myconversations;
    public $dialog_id = [];

    public function newmessageAction() {

        if(isset($_GET['send'])) {

            $user_one = $_SESSION['user']['id'];
            $user_two = $_GET['userid'];
            $user_ip = 111;
            $timestamp = time();
            
            $dialog = new Create_Conversation($user_one, $user_two, $user_ip, $timestamp);

            $v = $dialog->conversid();

            //$c_id =  $v['c_id'];
            
            if(isset($v['c_id'])) { 
            $c_id =  $v['c_id'];
            } 
            else {
            $v = $dialog->insert()->selectuser();
            $c_id = $v['0']['c_id'];
            }
        }

          $this->allmessages = $dialog->select_messages($c_id);

          $messages = $this->allmessages;

          $myconver = $dialog->myconversations($user_one);

          $this->set(compact('c_id', 'messages', 'myconver', 'v'));

    }
    

    public function indexAction() {

        $post_message = new all_conversation();


        $sender = $_SESSION['user']['id'];
        if(!isset($_GET['c_id'])) {
        $c = $post_message->myconversations($sender);
        if(empty($c['0']['c_id'])) {
            $c_id = ' ';
        } else {
            $c_id = $c['0']['c_id'];
        }
        
        $myconvers = $post_message->myconversations($sender);
        $messages = $post_message->select_messages($c_id);
        } else {
        $c_id = $_GET['c_id'];

        $myconvers = $post_message->myconversations($sender);
        $messages = $post_message->select_messages($c_id);
        }
          
        if(isset($_POST['message'])) {

        $uid = $_SESSION['user']['id'];
        $reply = $_POST['newmessage'];
        $ip = 'userip';
        $time = time();
        $cid = $_POST['c_id'];
        $post_message->insert_message($uid, $reply, $ip, $time, $cid);
        
        //$c_id_fk = $_POST['c_id_fk'];
        //$c_id_fk = $post_message->select_messages($cid);
        $myconvers = $post_message->myconversations($sender);
        //$messages = $post_message->select_messages($c_id_fk);
        redirect('/fw/messages/index');
        } 
        
        $myconvers = $post_message->myconversations($sender);
        $messages = $post_message->select_messages($c_id);

        if(isset($this->dialog_id['0']['c_id_fk'])){
            $get = $this->dialog_id['0']['c_id_fk'];
        } else {
            $get = '';
        }
          
        $this->set(compact('get', 'c_id', 'messages', 'myconvers'));

    }




}