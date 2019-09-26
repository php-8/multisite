<?php
header("Content-Type:application/json");
require_once('php_image_magician.php');

ini_set('memory_limit', '999M');
ini_set('post_max_size', '500M');
ini_set('upload_max_filesize', '400M');
ini_set('max_execution_time', '3000');
ini_set('max_input_time', '6000');

$method = new Receiver;

switch($_REQUEST['token']) {

   case 'check_connect':

   if(!empty($_GET['token'])) {
      $check = $method->check_connect();
      if(empty($check)) {
         jsonResponse(200,"ERROR", NULL);
      } else {
         jsonResponse(200,"SUCCESS", $check);
      }
}

break;	

   case 'create':

   if(!empty($_POST['token'])) {

    $timestamp = $_POST['timestamp'];
    $product_template = $_POST['product_template'];
    $product_quantity = $_POST['amount'];
    $product_price = $_POST['price'];
    $name = $_POST['name'];
    $alias = $_POST['translit'];
    $short_description = $_POST['short_description'];
    $description = $_POST['description'];
    $meta_title_ru = $_POST['meta_title'];
    $meta_description_ru = $_POST['meta_description'];
    $meta_keyword_ru = $_POST['meta_keywords'];
 
      if (isset($_FILES)) {

    $errors= array();
    $fotokey = [];
    foreach($_FILES['upfile']['tmp_name'] as $key => $tmp_name ) {

            $filename = $key.$_FILES['upfile']['name'][$key];
            $file_size =$_FILES['upfile']['size'][$key];
            $file_tmp =$_FILES['upfile']['tmp_name'][$key];
            $file_type=$_FILES['upfile']['type'][$key];	

            $tmp = explode('.', $filename);
            $end = end($tmp);
            $filename = fotoKey();
            $image = "../../../components/com_jshopping/files/img_products/original_" . $filename . "." . $end;
            move_uploaded_file($file_tmp, $image);
    
      $php_mag = new imageLib($image);
      $php_mag -> resizeImage(100, 75, 'crop');
      $sav = '../../../components/com_jshopping/files/img_products/thumb_' . $filename . "." . $end;
      $php_mag->saveImage($sav, 100);
  
      $php_magic = new imageLib($image);
      $php_magic -> resizeImage(200, 150, 'crop');
      $saved = '../../../components/com_jshopping/files/img_products/' . $filename . "." . $end;
      $php_magic->saveImage($saved, 100);
  
      $magic = new imageLib($image);
      $magic -> resizeImage(640, 480, 'crop');
      $save = '../../../components/com_jshopping/files/img_products/full_' . $filename . "." . $end;
      $magic->saveImage($save, 100);

      $fotokey[] = $filename . "." . $end;
    }
}

$filename = 'somefile.txt';
file_put_contents($filename, $fotokey);

    $updateuser = $method->create($timestamp, $product_template, $product_quantity, $product_price, $fotokey, $name, $alias, $short_description, $description, $meta_title_ru, $meta_description_ru, $meta_keyword_ru);

if(empty($updateuser)) {
    jsonResponse(200, "Error", NULL);
} else {
    jsonResponse(400, "Success", $updateuser);
}
}

break;

default:

echo 'ERROR';

}

function jsonResponse($status,$status_message, $data) {
    header("HTTP/1.1 " . $status_message);
    $response['status'] = $status;
    $response['status_message'] = $status_message;
    $response['data'] = $data;
    $json_response = json_encode($response);
    echo $json_response;
    }
 
    class Connect {
       protected $dbconnect;
       public function __construct() {
           function getDB() {
               $dbhost= 'localhost';
               $dbuser= 'admin_fin';
               $dbpass= 'GpSc3SIZ';
               $dbname= 'admin_fin';
               try {
               $dbConnection = new \PDO("mysql:host=$dbhost; dbname=$dbname", $dbuser, $dbpass); 
               $dbConnection->exec("set names utf8");
               $dbConnection->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
               return $dbConnection;
               }
               catch (PDOException $e) {
               echo 'Connection failed: ' . $e->getMessage();
               }
           }
           $this->dbconnect = getDB();
           return $this->dbconnect;
       }
   }
 
 Class Receiver extends Connect {
 public function __construct() {
       parent::__construct();
 }

public function check_connect() {
      $sqlquerry = "SELECT * FROM qtsb9_jshopping_products ORDER BY `product_id` DESC LIMIT 10";
      $check_connect = $this->dbconnect->prepare($sqlquerry);
      if($check_connect->execute()) {
      $response = $check_connect->fetchAll(PDO::FETCH_ASSOC);
      return $response;
      } else {
      return 'ERROR';
   } 
}

 public function create($timestamp, $product_template, $product_quantity, $product_price, $fotokey, $name, $alias, $short_description, $description, $meta_title_ru, $meta_description_ru, $meta_keyword_ru) {
    $publish = '1';
    $thumb = 'thumb_' . current($image);
    $full = 'full_' . current($image);

    $sql = "INSERT into qtsb9_jshopping_products (`product_ean`, `product_quantity`, `product_publish`, `product_template`, `product_price`, `product_thumb_image`, `product_name_image`, `product_full_image`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_keyword_ru-RU`, `meta_description_ru-RU`) VALUES(:product_ean, :quantity, :product_publish, :product_template, :product_price, :product_thumb_image, :product_name_image, :product_full_image, :name, :alias, :short_description, :description, :meta_title_ru, :meta_keyword_ru, :meta_description_ru); ";
    $query = $this->dbconnect->prepare($sql);
    $query->bindParam(':product_ean', $timestamp);
    $query->bindParam(':quantity', $product_quantity);
    $query->bindParam(':product_publish', $publish);
    $query->bindParam(':product_template', $product_template);
    $query->bindParam(':product_price', $product_price);
    $query->bindParam(':product_thumb_image', $thumb);
    $query->bindParam(':product_name_image', current($image));
    $query->bindParam(':product_full_image', $full);
    $query->bindParam(':name', $name);
    $query->bindParam(':alias', $alias);
    $query->bindParam(':short_description', $short_description);
    $query->bindParam(':description', $description);
    $query->bindParam(':meta_title_ru', $meta_title_ru);
    $query->bindParam(':meta_keyword_ru', $meta_keyword_ru);
    $query->bindParam(':meta_description_ru', $meta_description_ru);
   
    if($query->execute()) {
    $id = $this->dbconnect->lastInsertId();
    $category = '52';

    $st = "INSERT into qtsb9_jshopping_products_to_categories (`product_id`,`category_id`) VALUES(:product, :category); ";
    $q = $this->dbconnect->prepare($st);
    $q->bindParam(':product', $id);
    $q->bindParam(':category', $category);
    $q->execute();
  
    foreach($image as $newimagenames) {
	$thumb_newimagenames = 'thumb_' . $newimagenames;
	$full_newimagenames = 'full_' . $newimagenames;
        $stmt = "INSERT into qtsb9_jshopping_products_images (`product_id`, `image_thumb`, `image_name`, `image_full`, `name`) VALUES(:product_id, :image_thumb, :image_name, :image_full, :product_name); ";
        $qu = $this->dbconnect->prepare($stmt);
        $qu->bindParam(':product_id', $id);
        $qu->bindParam(':image_thumb', $thumb_newimagenames);
        $qu->bindParam(':image_name', $newimagenames);
        $qu->bindParam(':image_full', $full_newimagenames);
        $qu->bindParam(':product_name', $name);
        $qu->execute();
    }

    return 'Success' . ' ' . $id;
    } else {
       return 'Error';
       } 
    }
 }

 function fotoKey($length = 32) {
    $chars = "abcdefghijklmnopqrstuvwxyz1234567890";
    $key = "";
    for ($i = 0; $i < $length; $i++) {
        $key .= $chars{rand(0, strlen($chars) - 1)};
    } return $key;
 }

 
?>
