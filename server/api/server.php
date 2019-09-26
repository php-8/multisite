<?php
header("Content-Type:application/json");
ini_set('memory_limit', '999M');

$method = new Receiver;

switch($_REQUEST['method']) {

   case 'check_connect':

   if(!empty($_GET['method'])) {
      $check = $method->check_connect();
      if(empty($check)) {
         jsonResponse(200,"ERROR", NULL);
      } else {
         jsonResponse(200,"SUCCESS", $check);
      }
}
break;	

case 'get_products_relations':

if(!empty($_GET['method'])) {
   $id = $_GET['id'];
   $relations = $method->get_products_relations($id);
   if(empty($relations)) {
      jsonResponse(200,"ERROR", NULL);
   } else {
      jsonResponse(200,"SUCCESS", $relations);
   }
}
break;	

case 'get_products_attr':

if(!empty($_GET['method'])) {
   $id = $_GET['id'];
   $attr = $method->get_products_attr($id);
   if(empty($attr)) {
      jsonResponse(200,"ERROR", NULL);
   } else {
      jsonResponse(200,"SUCCESS", $attr);
   }
}
break;	

case 'get_all_products':

if(!empty($_GET['method'])) {
   $all_products = $method->get_all_products();
   if(empty($all_products)) {
      jsonResponse(200,"ERROR", NULL);
   } else {
      jsonResponse(200,"SUCCESS", $all_products);
   }
}
break;	

case 'get_products':

if(!empty($_GET['method'])) {
   $id = $_GET['id'];
   $new_products = $method->get_products($id);
   if(empty($new_products)) {
      jsonResponse(200,"ERROR", NULL);
   } else {
      jsonResponse(200,"SUCCESS", $new_products);
   }
}
break;	


case 'get_images':

if(!empty($_GET['method'])) {
   $id = $_GET['id'];
   $new_images = $method->get_images($id);
   if(empty($new_images)) {
      jsonResponse(200,"ERROR", $new_images);
   } else {
      jsonResponse(200,"SUCCESS", $new_images);
   }
}
break;


case 'get_product_to_category':

if(!empty($_GET['method'])) {
   $id = $_GET['id'];
   $new_products_to_categiry = $method->get_products_to_categiry($id);
   if(empty($new_products_to_categiry)) {
      jsonResponse(200,"ERROR", NULL);
   } else {
      jsonResponse(200,"SUCCESS", $new_products_to_categiry);
   }
}
break;



default:
echo 'ERROR';

}
   function jsonResponse($status,$status_message,$data) {
   header("HTTP/1.1 ".$status_message);
   $response['status']=$status;
   $response['status_message']=$status_message;
   $response['data']=$data;
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

public function get_all_products() {
   $sqlq = "SELECT `product_id`, `product_ean`, `product_quantity`, `min_price` FROM qtsb9_jshopping_products LIMIT 10";
   $get_all_products = $this->dbconnect->prepare($sqlq);
   if($get_all_products->execute()) {
   $response = $get_all_products->fetchAll(PDO::FETCH_ASSOC);
   return $response;
   } else {
   return 'ERROR';
  } 
}

public function get_products($product_id) {
   $sqlq = "SELECT * FROM qtsb9_jshopping_products WHERE `product_id` >= :product_id ORDER BY `product_id`";
   $get_products = $this->dbconnect->prepare($sqlq);
   $get_products->bindParam(':product_id', $product_id);
   if($get_products->execute()) {
   $response = $get_products->fetchAll(PDO::FETCH_ASSOC);
   return $response;
   } else {
   return 'ERROR';
  } 
}


public function get_images($product_id) {
   $qlq = "SELECT * FROM qtsb9_jshopping_products_images WHERE `product_id` = :product_id ORDER BY `product_id`";
   $get_new_images = $this->dbconnect->prepare($qlq);
   $get_new_images->bindParam(':product_id', $product_id);
   if($get_new_images->execute()) {
   $response = $get_new_images->fetchAll(PDO::FETCH_ASSOC);
   return $response;
   } else {
   return 'ERROR';
   } 
}


public function get_products_to_categiry($product_id) {
   $lq = "SELECT * FROM `qtsb9_jshopping_products_to_categories` WHERE `product_id` = :product_id ORDER BY `product_id`";
   $get_new_products_to_categiry = $this->dbconnect->prepare($lq);
   $get_new_products_to_categiry->bindParam(':product_id', $product_id);
   if($get_new_products_to_categiry->execute()) {
   $response = $get_new_products_to_categiry->fetchAll(PDO::FETCH_ASSOC);
   return $response;
   } else {
     return 'ERROR';
    } 
  }

public function get_products_attr($product_id) {
   $sql_products_attr = "SELECT * FROM `qtsb9_jshopping_products_attr` WHERE `product_id` = :product_id ORDER BY `product_id`";
   $products_attr = $this->dbconnect->prepare($sql_products_attr);
   $products_attr->bindParam(':product_id', $product_id);
   if($products_attr->execute()) {
   $response = $products_attr->fetchAll(PDO::FETCH_ASSOC);
   return $response;
   } else {
     return 'ERROR';
    } 
  }

public function get_products_relations($product_id) {
   $sql_products_relations = "SELECT * FROM `qtsb9_jshopping_products_relations` WHERE `product_id` = :product_id ORDER BY `product_id`";
   $products_relations = $this->dbconnect->prepare($sql_products_relations);
   $products_relations->bindParam(':product_id', $product_id);
   if($products_relations->execute()) {
   $response = $products_relations->fetchAll(PDO::FETCH_ASSOC);
   return $response;
   } else {
     return 'ERROR';
    } 
  }

}
?>
