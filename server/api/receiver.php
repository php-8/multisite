<?php
header("Content-Type:application/json");
include_once("connection.php");


switch($_GET['method']) {
	
 case 'get_products':

 if(!empty($_GET['method'])) {
    $items = between();
    if(empty($items)) {
    jsonResponse(200, "Items Not Found", $items);
    } else {
    jsonResponse(200, "Item Found", $items);
    }
    } else {
    jsonResponse(400, "Invalid Request", NULL);
    }
 break;	


 case 'get_product_to_category':

 if(!empty($_GET['method'])) {
    $product_to_category = product_to_category();
    if(empty($items)) {
    jsonResponse(200, "Items Not Found", $product_to_category);
    } else {
    jsonResponse(200, "Item Found", $product_to_category);
    }
    } else {
    jsonResponse(400, "Invalid Request", NULL);
    }
 break;	


 case 'get_category':

 if(!empty($_GET['method'])) {
    $category = category();
    if(empty($category)) {
    jsonResponse(200, "Items Not Found", $ategory);
    } else {
    jsonResponse(200, "Item Found", $category);
    }
    } else {
    jsonResponse(400, "Invalid Request", NULL);
    }
 break;	


 case 'get_products_images':

 if(!empty($_GET['method'])) {
    $products_images = products_images();
    if(empty($items)) {
    jsonResponse(200, "Items Not Found", $products_images);
    } else {
    jsonResponse(200, "Item Found", $products_images);
    }
    } else {
    jsonResponse(400, "Invalid Request", NULL);
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

function Items() {

       $query = "SELECT * FROM `qtsb9_jshopping_products` LIMIT 10";
       $db = Db::getInstance();
       $stmt = $db->prepare($query);
       $stmt->execute();

       if($stmt->execute())
       {
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $rows;
       }
       else
       {
       return 'ERROR';
       }  
   } 

      function category() {

         $query = "SELECT * FROM `qtsb9_jshopping_categories` WHERE `category_id` > 12419 ORDER BY `category_id`";
         $db = Db::getInstance();
         $st = $db->prepare($query);
         $st->execute();
  
         if($st->execute())
         {
          $row = $st->fetchAll(PDO::FETCH_ASSOC);
          return $row;
         }
         else
         {
         return 'ERROR';
         } 
	}


	function products_images() {

         $query = "SELECT * FROM `qtsb9_jshopping_products_images` WHERE `product_id` > 16147 ORDER BY `product_id`";
         $db = Db::getInstance();
         $st = $db->prepare($query);
         $st->execute();
  
         if($st->execute())
         {
          $row = $st->fetchAll(PDO::FETCH_ASSOC);
          return $row;
         }
         else
         {
         return 'ERROR';
         } 
	}


      function product_to_category() {

         $query = "SELECT * FROM `qtsb9_jshopping_products_to_categories` WHERE `product_id` > 16147 ORDER BY `product_id`";
         $db = Db::getInstance();
         $st = $db->prepare($query);
         $st->execute();
  
         if($st->execute())
         {
          $row = $st->fetchAll(PDO::FETCH_ASSOC);
          return $row;
         }
         else
         {
         return 'ERROR';
         } 

}


      function between() {

         $query = "SELECT * FROM `qtsb9_jshopping_products` WHERE `product_id` > 16147 ORDER BY `product_id`";
         $db = Db::getInstance();
         $stmt = $db->prepare($query);
         $stmt->execute();
  
         if($stmt->execute())
         {
          $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
          return $rows;
         }
         else
         {
         return 'ERROR';
         }   
      } 
    




?>
