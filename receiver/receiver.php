<?php
header("Content-Type:application/json");
$method = new Uploader;

switch($_REQUEST['method']) {


case 'update_price_and_quantity':

if(!empty($_POST['method'])) {
    $product_ean = $_POST['product_ean'];
    $product_price = $_POST['product_price'];
    $product_quantity = $_POST['product_quantity'];
    $products_update = $method->update_price_and_quantity($product_ean, $product_price, $product_quantity);
   if(empty($products_update)) {
   jsonResponse(200, "Error", $products_update);
   } else {
   jsonResponse(400, "Success", $products_update);
 }
}
break;


   case 'set_products':

   if(!empty($_POST['method'])) {
    $product_id = $_POST['product_id'];
    $product_ean = $_POST['product_ean'];
    $product_quantity = $_POST['product_quantity'];
    $product_date_added = $_POST['product_date_added'];
    $date_modify = $_POST['date_modify'];
    $product_publish = $_POST['product_publish'];
    $currency_id = $_POST['currency_id'];
    $product_template = $_POST['product_template']; 
    $product_url = $_POST['product_url'];
    $product_old_price = $_POST['product_old_price'];
    $product_buy_price = $_POST['product_buy_price'];
    $product_price = $_POST['product_price'];
    $min_price = $_POST['min_price'];
    $different_prices = $_POST['different_prices'];
    $product_weight = $_POST['product_weight'];
    $product_name_image = $_POST['product_name_image'];
    $product_manufacturer_id = $_POST['product_manufacturer_id'];
    $product_is_add_price = $_POST['product_is_add_price'];
    $add_price_unit_id = $_POST['add_price_unit_id'];
    $average_rating = $_POST['average_rating'];
    $access = $_POST['access'];
    $name_ru = $_POST['name_ru_RU'];
    $alias_ru = $_POST['alias_ru_RU'];
    $short_description_ru = $_POST['short_description_ru_RU'];
    $description_ru = $_POST['description_ru_RU'];
    $meta_title_ru = $_POST['meta_title_ru_RU'];
    $meta_keyword_ru = $_POST['meta_keyword_ru_RU'];
    $meta_description_ru = $_POST['meta_description_ru_RU'];

    $set_item = $method->set_product($product_id, $product_ean, $product_quantity, $product_date_added, $date_modify, $product_publish, $currency_id, $product_template, $product_url, $product_old_price, $product_buy_price, $product_price, $min_price, $different_prices, $product_weight, $product_name_image, $product_manufacturer_id, $product_is_add_price, $add_price_unit_id, $average_rating, $access, $name_ru, $alias_ru, $short_description_ru, $description_ru, $meta_title_ru, $meta_keyword_ru, $meta_description_ru);

      if(empty($set_item)) {
      jsonResponse(200, "Error", $set_item);
      } else {
      jsonResponse(400, "Success", $set_item);
    }
}
break;

case 'set_images':

if(!empty($_POST['method'])) {
    $img_product_id = $_POST['image_id'];
    $product_id = $_POST['product_id'];
    $image = $_POST['image'];
    $name = $_POST['name'];
    $ordering = $_POST['ordering'];
    $set_images = $method->set_images($product_id, $image, $name);
    if(empty($set_images)) {
    jsonResponse(200, "Error", $set_images);
    } else {
    jsonResponse(400, "Success", $set_images);
    }
}
break;

case 'set_product_to_category':

if(!empty($_POST['method'])) {
    $category_product_id = $_POST['category_product_id'];
    $category_category_id = $_POST['category_category_id'];
    $products_to_categiry = $method->products_to_categiry($category_product_id, $category_category_id);
   if(empty($products_to_categiry)) {
   jsonResponse(200, "Error", $products_to_categiry);
   } else {
   jsonResponse(400, "Success", $products_to_categiry);
 }
}
break;

default:

echo 'ERROR';
}

function jsonResponse($status,$status_message,$data) {
    header("HTTP/1.1 " . $status_message);
    $response['status']=$status;
    $response['status_message']=$status_message;
    $response['data']=$data;
    $json_response = json_encode($response) . '},';
    echo $json_response;
  }

 
   class Connect {
    protected $dbconnect;
    public function __construct() {
        function getDB() {
            $dbhost= 'localhost';
            $dbuser= 'printer';
            $dbpass= 'riK4IU9byTOoYIlJ';
            $dbname= 'printervoronezh';
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

class Uploader extends Connect {
    public function __construct() {
        parent::__construct();
  }




// public function update_price_and_quantity($product_ean, $product_price, $product_quantity) {
//     try {
//         $quantity = $this->dbconnect->prepare("SELECT `product_id` FROM s1y5k_jshopping_products WHERE `product_ean`=:product_ean, `product_price`=:product_price, `product_quantity`=:product_quantity"); 
//         $quantity->bindParam("product_ean", $product_ean, \PDO::PARAM_STR);
//         $quantity->bindParam("product_price", $product_price, \PDO::PARAM_STR);
//         $quantity->bindParam("product_quantity", $product_quantity, \PDO::PARAM_STR);
//         $quantity->execute();
//         $count = $quantity->rowCount();
//     if($count < 1) {
//         $sql_query = $this->dbconnect->prepare("UPDATE `s1y5k_jshopping_products` SET product_price = :product_price, product_quantity = :product_quantity WHERE product_ean=:product_ean");
//         $sql_query->bindParam(':product_ean', $product_ean);
//         $sql_query->bindParam(':product_price', $product_price);
//         $sql_query->bindParam(':product_quantity', $product_quantity);
//         $sql_query->execute();
//         } else {
//         return 'ean does not isset';
//         }
//     }    
//     catch(Exception $e) {
//     }
// }

    public function update_price_and_quantity($product_ean, $product_price, $product_quantity) {
        $sql_query = $this->dbconnect->prepare("UPDATE `s1y5k_jshopping_products` SET product_price = :product_price, product_quantity = :product_quantity WHERE product_ean=:product_ean");
        $sql_query->bindParam(':product_ean', $product_ean);
        $sql_query->bindParam(':product_price', $product_price);
        $sql_query->bindParam(':product_quantity', $product_quantity);
        $sql_query->execute();
        return 'success';
        }
  
    public function set_product($product_id1, $product_ean1, $product_quantity1, $product_date_added1, $date_modify1, $product_publish1, $currency_id1, $product_template1, $product_url1, $product_old_price1, $product_buy_price1, $product_price1, $min_price1, $different_prices1, $product_weight1, $product_name_image1, $product_manufacturer_id1, $product_is_add_price1, $add_price_unit_id1, $average_rating1, $access1, $name_ru1, $alias_ru1, $short_description_ru1, $description_ru1, $meta_title_ru1, $meta_keyword_ru1, $meta_description_ru1) {
    try {
        $st = $this->dbconnect->prepare("SELECT `product_id`, `product_ean` FROM s1y5k_jshopping_products WHERE `product_ean`=:product_ean"); 
        $st->bindParam("product_ean", $product_ean1, \PDO::PARAM_STR);
        $st->execute();
        $count=$st->rowCount();
        $usererror = $st->fetch();
        $message = $usererror['product_ean'];
    if($count<1) {
    $sql = "INSERT into s1y5k_jshopping_products (`product_ean`, `product_quantity`, `product_date_added`, `date_modify`, `product_publish`, `currency_id`, `product_template`, `product_url`, `product_old_price`, `product_buy_price`, `product_price`, `min_price`, `different_prices`, `product_weight`, `image`, `product_manufacturer_id`, `product_is_add_price`, `add_price_unit_id`, `average_rating`, `access`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_keyword_ru-RU`, `meta_description_ru-RU`) 
    VALUES(:product_ean, :product_quantity, :product_date_added, :date_modify, :product_publish, :currency_id, :product_template, :product_url, :product_old_price, :product_buy_price, :product_price, :min_price, :different_prices, :product_weight, :product_name_image, :product_manufacturer_id, :product_is_add_price, :add_price_unit_id, :average_rating, :access, :name_ru, :alias_ru, :short_description_ru, :description_ru, :meta_title_ru, :meta_keyword_ru, :meta_description_ru); ";
        $query = $this->dbconnect->prepare($sql);
        $query->bindParam(':product_ean', $product_ean1);
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
        } else {
        $pid['lastinsertid'] = '0';
        $pid['originalid'] = '0';
        return $pid;
        }
    }    
    catch(Exception $e) {
    }
}
     
     public function set_images($product_id, $image, $name) {

        if($product_id != 0) {

            $file = 'http://vce-o-printere.ru/components/com_jshopping/files/img_products/' . $image;
            $img = '../../printervoronezh/components/com_jshopping/files/img_products/' . $image;
            copy($file, $img);
    
            $file_full = 'http://vce-o-printere.ru/components/com_jshopping/files/img_products/full_' . $image;
            $img_full = '../../printervoronezh/components/com_jshopping/files/img_products/full_' . $image;
            copy($file_full, $img_full);
    
            $file_thumb = 'http://vce-o-printere.ru/components/com_jshopping/files/img_products/thumb_' . $image;
            $img_thumb = '../../printervoronezh/components/com_jshopping/files/img_products/thumb_' . $image;
            copy($file_thumb, $img_thumb);
    
            $sql = "INSERT into s1y5k_jshopping_products_images (`product_id`, `image_name`, `name`) VALUES(:product_id, :image, :name); ";
            $qry = $this->dbconnect->prepare($sql);
            $qry->bindParam(':product_id', $product_id);
            $qry->bindParam(':image', $image);
            $qry->bindParam(':name', $name);
            $qry->execute();
            return 'uploaded';

        } else {
        return 'image isset';
    }
}

     public function products_to_categiry($product_id, $category_id) {

        if($product_id != 0) {

            ini_set('display_errors', 'Off');
            $sql = "INSERT into s1y5k_jshopping_products_to_categories (`product_id`, `category_id`) VALUES(:product_id, :category_id); ";
            $q = $this->dbconnect->prepare($sql);
            $q->bindParam(':product_id', $product_id);
            $q->bindParam(':category_id', $category_id);
            $q->execute();
            return 'uploaded';
        } else {
            return 'category isset';
        }
    } 


}

?>
