<?php
header("Content-Type:application/json");
ini_set('memory_limit', '999M');

$method = new Receiver;

switch($_REQUEST['method']) {

 case 'set_products':

   if(!empty($_POST['method'])) {

    $product_quantity = $_POST['product_quantity'];
    $product_date_added = $_POST['product_date_added'];
    $date_modify = $_POST['date_modify'];
    $product_publish = '0';
    $currency_id = '0';
    $product_template = 'default'; 
    $product_url = '0';
    $product_old_price = $_POST['product_old_price'];
    $product_buy_price = $_POST['product_buy_price'];
    $product_price = $_POST['product_price'];
    $min_price = $_POST['product_price'];
    $different_prices = '0';
    $product_weight = $_POST['product_weight'];
   $product_thumb_image = 'thumb_' . $_POST['product_name_image'];
   $product_name_image = $_POST['product_name_image'];
   $product_full_image = 'full_' . $_POST['product_name_image'];
    $product_manufacturer_id = '0';
    $product_is_add_price = '0';
    $add_price_unit_id = '0';
    $average_rating = '0';
    $access = '1';
    $name_ru = $_POST['name_ru_RU'];
    $alias_ru = $_POST['alias_ru_RU'];
    $short_description_ru = $_POST['short_description_ru_RU'];
    $description_ru = $_POST['description_ru_RU'];
    $meta_title_ru = $_POST['meta_title_ru_RU'];
    $meta_keyword_ru = $_POST['meta_keyword_ru_RU'];
    $meta_description_ru = $_POST['meta_description_ru_RU'];

    $set_item = $method->set_product($product_quantity, $product_date_added, $date_modify, $product_publish, $currency_id, $product_template, $product_url, $product_old_price, $product_buy_price, $product_price, $min_price, $different_prices, $product_weight, $product_thumb_image, $product_name_image, $product_full_image, $product_manufacturer_id, $product_is_add_price, $add_price_unit_id, $average_rating, $access, $name_ru, $alias_ru, $short_description_ru, $description_ru, $meta_title_ru, $meta_keyword_ru, $meta_description_ru);

      if(empty($set_item)) {
      jsonResponse(200, "Error", $set_item);
      } else {
      jsonResponse(400, "Success", $set_item);
    }
}
break;

case 'get_products':

if(!empty($_GET['method'])) {
   $products = $method->get_products();
   if(empty($products)) {
      jsonResponse(200,"Error", NULL);
   } else {
      jsonResponse(200,"Success", $products);
   }
}
break;	

case 'get_products_images':

if(!empty($_GET['method'])) {
   $productsi = $method->get_products_images();
   if(empty($productsi)) {
      jsonResponse(200,"Error", NULL);
   } else {
      jsonResponse(200,"Success", $productsi);
   }
}
break;	

case 'update_ean':

if(!empty($_POST['method'])) {
   $id = $_POST['id'];
   $new_ean = $method->updateItem($id);
   if(empty($new_ean)) {
      jsonResponse(200,"Error", NULL);
   } else {
      jsonResponse(200,"Success", $new_ean);
   }
}
break;	

case 'set_images':

if(!empty($_POST['method'])) {
   $product_id1 = $_POST['id'];
   $image_thumb = $_POST['image_thumb'];
   $image_name = $_POST['image_name'];
   $image_full = $_POST['image_full'];
   $product_name = $_POST['product_name'];
   $images = $method->set_images($product_id1, $image_thumb, $image_name, $image_full, $product_name);
   if(empty($images)) {
      jsonResponse(200,"Error", NULL);
   } else {
      jsonResponse(200,"Success", $images);
   }
}
break;

case 'set_category':

if(!empty($_POST['method'])) {
   $product_id11 = $_POST['product_id'];
   $category_id = $_POST['category_id'];
   $category = $method->set_category($product_id11, $category_id);
   if(empty($category)) {
      jsonResponse(200,"Error", NULL);
   } else {
      jsonResponse(200,"Success", $category);
   }
}
break;

case 'set_product_attr':

if(!empty($_POST['method'])) {
   $product_id_atr = $_POST['product_id'];
   $ean = $_POST['product_id'];
   $weight = $_POST['weight'];
   $atr_id = $_POST['atr'];
   $atr = $method->set_product_attr($product_id_atr, $ean, $weight, $atr_id);
   if(empty($atr)) {
      jsonResponse(200,"Error", NULL);
   } else {
      jsonResponse(200,"Success", $atr);
   }
}
break;


case 'update_product':

if(!empty($_POST['method'])) {
   $id1 = $_POST['product_id'];
   $product_thumb_image1 = $_POST['product_thumb_image'];
   $product_name_image1 = $_POST['product_name_image'];
   $product_full_image1 = $_POST['product_full_image'];
   $update_product = $method->update_product($id1, $product_thumb_image1, $product_name_image1, $product_full_image1);
   if(empty($update_product)) {
      jsonResponse(200,"Error", NULL);
   } else {
      jsonResponse(200,"Success", $update_product);
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

  public function set_product($product_quantity1, $product_date_added1, $date_modify1, $product_publish1, $currency_id1, $product_template1, $product_url1, $product_old_price1, $product_buy_price1, $product_price1, $min_price1, $different_prices1, $product_weight1, $product_thumb_image1, $product_name_image1, $product_full_image1, $product_manufacturer_id1, $product_is_add_price1, $add_price_unit_id1, $average_rating1, $access1, $name_ru1, $alias_ru1, $short_description_ru1, $description_ru1, $meta_title_ru1, $meta_keyword_ru1, $meta_description_ru1) {
    $sql11 = "INSERT into `qtsb9_jshopping_products` (`product_quantity`, `product_date_added`, `date_modify`, `product_publish`, `currency_id`, `product_template`, `product_url`, `product_old_price`, `product_buy_price`, `product_price`, `min_price`, `different_prices`, `product_weight`, `product_thumb_image`, `product_name_image`, `product_full_image`, `product_manufacturer_id`, `product_is_add_price`, `add_price_unit_id`, `average_rating`, `access`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_keyword_ru-RU`, `meta_description_ru-RU`) 
    VALUES(:product_quantity, :product_date_added, :date_modify, :product_publish, :currency_id, :product_template, :product_url, :product_old_price, :product_buy_price, :product_price, :min_price, :different_prices, :product_weight,  :product_thumb_image, :product_name_image, :product_full_image, :product_manufacturer_id, :product_is_add_price, :add_price_unit_id, :average_rating, :access, :name_ru, :alias_ru, :short_description_ru, :description_ru, :meta_title_ru, :meta_keyword_ru, :meta_description_ru); ";
        $query = $this->dbconnect->prepare($sql11);
        $query->bindParam(':product_quantity', $product_quantity1);
        $query->bindParam(':product_date_added', $product_date_added1);
        $query->bindParam(':date_modify', $date_modify1);
        $query->bindParam(':product_publish', $product_publish1);
        $query->bindParam(':currency_id', $currency_id1);
        $query->bindParam(':product_template', $product_template1);
        $query->bindParam(':product_url', $product_url1);
        $query->bindParam(':product_old_price', $product_old_price1);
        $query->bindParam(':product_buy_price', $product_buy_price1);
        $query->bindParam(':product_price', $product_price1);
        $query->bindParam(':min_price', $min_price1);
        $query->bindParam(':different_prices', $different_prices1);
        $query->bindParam(':product_weight', $product_weight1);
       $query->bindParam(':product_thumb_image', $product_thumb_image1);
       $query->bindParam(':product_name_image', $product_name_image1);
       $query->bindParam(':product_full_image', $product_full_image1);
        $query->bindParam(':product_name_image', $product_name_image1);
        $query->bindParam(':product_manufacturer_id', $product_manufacturer_id1);
        $query->bindParam(':product_is_add_price', $product_is_add_price1);
        $query->bindParam(':add_price_unit_id', $add_price_unit_id1);
        $query->bindParam(':average_rating', $average_rating1);
        $query->bindParam(':access', $access1);
        $query->bindParam(':name_ru', $name_ru1);
        $query->bindParam(':alias_ru', $alias_ru1);
        $query->bindParam(':short_description_ru', $short_description_ru1);
        $query->bindParam(':description_ru', $description_ru1);
        $query->bindParam(':meta_title_ru', $meta_title_ru1);
        $query->bindParam(':meta_keyword_ru', $meta_keyword_ru1);
        $query->bindParam(':meta_description_ru', $meta_description_ru1);
        $query->execute();
        $pid['lastinsertid'] = $this->dbconnect->lastInsertId();
        $pid['originalid'] = $product_id1;
        return $pid;
    }



public function set_category($product_id, $category_id) {
    $sqll = "INSERT into `qtsb9_jshopping_products_to_categories` (`product_id`, `category_id`) VALUES(:product_id, :category_id); ";
    $ql = $this->dbconnect->prepare($sqll);
    $ql->bindParam(':product_id', $product_id);
    $ql->bindParam(':category_id', $category_id);
    $ql->execute();
    return 'uploaded';
}


public function set_product_attr($product11, $ean11, $weight11, $attr_16) {
    $sql_atr = "INSERT into `qtsb9_jshopping_products_attr` (`product_id`, `ean`, `weight`, `attr_16`) VALUES(:product_id, :ean, :weight, :attr_16); ";
    $ql_atr = $this->dbconnect->prepare($sql_atr);
    $ql_atr->bindParam(':product_id', $product11);
    $ql_atr->bindParam(':ean', $ean11);
    $ql_atr->bindParam(':weight', $weight11);
    $ql_atr->bindParam(':attr_16', $attr_16);
    $ql_atr->execute();
    return 'uploaded';
}


public function set_images($product_id, $product_thumb_image, $product_name_image, $product_full_image, $name) {
    $sq = "INSERT into `qtsb9_jshopping_products_images` (`product_id`, `image_thumb`, `image_name`, `image_full`, `name`) VALUES(:product_id, :product_thumb_image, :product_name_image, :product_full_image, :name); ";
    $q = $this->dbconnect->prepare($sq);
    $q->bindParam(':product_id', $product_id);
    $q->bindParam(':product_thumb_image', $product_thumb_image);
    $q->bindParam(':product_name_image', $product_name_image);
    $q->bindParam(':product_full_image', $product_full_image);
    $q->bindParam(':name', $name);
    $q->execute();
    return 'uploaded';
}





public function get_products_images() {
   $sqlqi = "SELECT `image_id`, `product_id`, `image_thumb`, `image_name`, `image_full`, `name`, `ordering` FROM qtsb9_jshopping_products_images WHERE `product_id` BETWEEN 16020 AND 16059 ORDER BY `product_id`";
   $get_productsi = $this->dbconnect->prepare($sqlqi);
   if($get_productsi->execute()) {
   $responsei = $get_productsi->fetchAll(PDO::FETCH_ASSOC);
   return $responsei;
   } else {
   return 'ERROR';
  } 
}


public function get_products() {
   $sqlq = "SELECT `product_id`, `product_thumb_image`, `product_name_image`, `product_full_image`, `name_ru-RU` FROM qtsb9_jshopping_products WHERE `product_id` > 19238 ORDER BY `product_id`";
   $get_products = $this->dbconnect->prepare($sqlq);
   if($get_products->execute()) {
   $response = $get_products->fetchAll(PDO::FETCH_ASSOC);
   return $response;
   } else {
   return 'ERROR';
  } 
}

function updateItem($id) {
    $sql = "UPDATE qtsb9_jshopping_products SET product_ean=:product_ean WHERE `product_id`=:id";
    $query = $this->dbconnect->prepare($sql);
    $query->bindParam(':id', $id);
    $query->bindParam(':product_ean', $id);
    if($query->execute()) {
        return 'Success';
        } else {
        return 'Error';
    } 
}



function update_product($id, $product_thumb_image, $product_name_image, $product_full_image) {
    $sql1 = "UPDATE `qtsb9_jshopping_products` SET `product_thumb_image` = :product_thumb_image, `product_name_image` = :product_name_image, `product_full_image` = :product_full_image WHERE `product_id`=:id";
    $query1 = $this->dbconnect->prepare($sql1);
    $query1->bindParam(':id', $id);
    $query1->bindParam(':product_thumb_image', $product_thumb_image);
    $query1->bindParam(':product_name_image', $product_name_image);
    $query1->bindParam(':product_full_image', $product_full_image);
    if($query1->execute()) {
        return 'Success';
        } else {
        return 'Error';
    } 
}


}

?>
