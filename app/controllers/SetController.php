<?php
namespace app\controllers;

use app\models\User;

use fw\core\base\View;

use app\models\Main;

use app\models\display;

use app\models\uploader;

use app\models\Sql;

class SetController extends AppController {
    public $sites = array('printervoronezh.ru', 'printergroznyi.ru', 'printerivanovo.ru', 'printersochi.ru', 'printerufa.ru', 'https://printerspb.com', 'https://printer-almaty.kz');
    //public $sites = array('http://vce-o-printere.ru', 'https://printerspb.com', 'https://printer-almaty.kz');

    public function IndexAction() {

        $categories = new display();
        $values = $categories->categories();
        $this->set(compact('values'));
        
// ----------------------------- || - || ----------------------------- //

if (isset($_POST['submit'])) {
    $timestaamp = time();
    foreach($this->sites as $site) {
    for($i=0; $i<count($_FILES['upfile']['tmp_name']); $i++) {
        $post['upfile['.$i.']'] = new \CurlFile($_FILES["upfile"]["tmp_name"][$i], $_FILES["upfile"]["type"][$i], $_FILES["upfile"]["name"][$i]);
    }
    $_POST['timestamp'] = $timestaamp;   
    $_POST['token'] = 'create';
    $post = array_merge($post, $_POST);
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $site . "/administrator/api/setter/api_test.php");
    curl_setopt($ch, CURLOPT_HEADER, false);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0");
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
    $response = curl_exec($ch);
    $result = json_decode(json_encode($response), True);
    $array = json_decode($result,true); 
    curl_close($ch);
    //print_r($result);
    }
}

// ----------------------------- || - || ----------------------------- //

        if(isset($_POST['submit']))	{
            // $timestamp = time();   
            // $name = $_POST['name'];
            // $translit = $_POST['translit'];
            // $short_description = $_POST['short_description'];
            // $description = $_POST['description'];
            // $meta_title = $_POST['meta_title'];
            // $meta_description = $_POST['meta_description'];
            // $meta_keywords = $_POST['meta_keywords'];
            // $method = $_POST['method'];
            // $price = $_POST['price'];
            // $amount = $_POST['amount'];
            // $category = $_POST['category'];
            // $product_template = $_POST['product_template'];
            
            // $filetmpname = $_FILES['image']['tmp_name']; 
            // $filetype = $_FILES['image']['type']; 
            // $filename = $_FILES['image']['name'];
            // $img = '0';

            // $set = new uploader($timestamp, $name, $translit, $short_description, $description, $meta_title, $meta_description, $meta_keywords, $method, $price, $amount, $category, $img, $product_template, $filetmpname, $filetype, $filename);
            // $set->uploader();
            //$this->set(compact('file'));
        }
    }
}