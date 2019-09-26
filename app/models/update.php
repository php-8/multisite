<?php
namespace app\models;

use App\models;

class Update extends AppModel {

    public function __construct() {
        parent::__construct();
    }

    public function Get_all_products() {
        $url = 'https://vce-o-printere.ru/administrator/api/server.php?method=get_all_products';
        $client = curl_init($url);
        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($client);
        $result = json_decode(json_encode($response), True);
        $this->array = json_decode($result,true);  
        return $this->array;
    }

    public function Get_products($id) {
        $url = 'https://vce-o-printere.ru/administrator/api/server.php?method=get_products&id=' . $id;
        $client = curl_init($url);
        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($client);
        $result = json_decode(json_encode($response), True);
        $this->array = json_decode($result,true);  
        return $this->array;
    }

    public function Get_images($id) {
        $url = 'https://vce-o-printere.ru/administrator/api/server.php?method=get_images&id=' . $id;
        $client = curl_init($url);
        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($client);
        $result = json_decode(json_encode($response), True);
        $this->array = json_decode($result,true);  
        return $this->array;
    }

    public function Get_product_to_category($id) {
        $url = 'https://vce-o-printere.ru/administrator/api/server.php?method=get_product_to_category&id=' . $id;
        $client = curl_init($url);
        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($client);
        $result = json_decode(json_encode($response), True);
        $this->array = json_decode($result,true);  
        return $this->array;
    }


    public function set_new_products($product_id, $product_ean, $product_quantity, $product_date_added, $date_modify, $product_publish, $product_tax_id, $currency_id, $product_template, $product_url, $product_old_price, $product_buy_price, $product_price, $min_price, $different_prices, $product_weight, $image, $product_manufacturer_id, $product_is_add_price, $add_price_unit_id, $average_rating, $access, $name_ru_RU, $alias_ru_RU, $short_description_ru_RU, $description_ru_RU, $title, $description, $keyword, $receiver) {

        $c = curl_init();

        $category_data = array(
        "product_id"=>$product_id, 
        "product_ean"=>$product_ean, 
        "product_quantity"=>$product_quantity,
        "product_date_added"=>$product_date_added, 
        "date_modify"=>$date_modify, 
        "product_publish"=>$product_publish, 
        "currency_id"=>$currency_id,
        "product_template"=>$product_template, 
        "product_url"=>$product_url, 
        "product_old_price"=>$product_old_price, 
        "product_buy_price"=>$product_buy_price, 
        "product_price"=>$product_price, 
        "min_price"=>$min_price, 
        "different_prices"=>$different_prices, 
        "product_weight"=>$product_weight, 
        "product_name_image"=>$image, 
        "product_manufacturer_id"=>$product_manufacturer_id, 
        "product_is_add_price"=>$product_is_add_price, 
        "add_price_unit_id"=>$add_price_unit_id, 
        "average_rating"=>$average_rating, 
        "access"=>$access, 
        "name_ru_RU"=>$name_ru_RU, 
        "alias_ru_RU"=>$alias_ru_RU, 
        "short_description_ru_RU"=>$short_description_ru_RU, 
        "description_ru_RU"=>$description_ru_RU, 
        "meta_title_ru_RU"=>$title, 
        "meta_description_ru_RU"=>$description,
        "meta_keyword_ru_RU"=>$keyword, 
        "method" =>"set_products",
        );

        curl_setopt($c, CURLOPT_URL, $receiver);
        curl_setopt($c, CURLOPT_POST, true);
        curl_setopt($c, CURLOPT_POSTFIELDS, $category_data);
        $response = curl_exec($c);
        $result = json_decode(json_encode($response), True);
        $array = json_decode($result, true); 
    }

    public function set_images($product_id1, $image_name, $name, $receiver) {
        $c = curl_init();
        $category_data = array(
            "product_id"=>$product_id1,
            "image"=>$image_name, 
            "name"=>$name,
            "method" =>"set_images",
        );
        curl_setopt($c, CURLOPT_URL, $receiver);
        curl_setopt($c, CURLOPT_POST, true);
        curl_setopt($c, CURLOPT_POSTFIELDS, $category_data);
      
        $response = curl_exec($c);
        $result = json_decode(json_encode($response), True);
        $array = json_decode($result, true); 
    }

    public function set_product_to_category($category_product_id, $category_category_id, $receiver) {
        $c = curl_init();
        $category_data = array(
            "category_product_id"=>$category_product_id, 
            "category_category_id"=>$category_category_id,
            "method" =>"set_product_to_category",
        );
        curl_setopt($c, CURLOPT_URL, $receiver);
        curl_setopt($c, CURLOPT_POST, true);
        curl_setopt($c, CURLOPT_POSTFIELDS, $category_data);
      
        $response = curl_exec($c);
        $result = json_decode(json_encode($response), True);
        $array = json_decode($result, true); 
    }

    public function update_price_and_quantity($product_id, $product_ean, $product_price, $product_quantity, $receiver) {
        $c = curl_init();
        $category_data = array(
            "product_id"=>$product_id,
            "product_ean"=>$product_ean, 
            "product_price"=>$product_price,
            "product_quantity"=>$product_quantity,
            "method" =>"update_price_and_quantity",
        );
        curl_setopt($c, CURLOPT_URL, $receiver);
        curl_setopt($c, CURLOPT_POST, true);
        curl_setopt($c, CURLOPT_POSTFIELDS, $category_data);
      
        $response = curl_exec($c);
        $result = json_decode(json_encode($response), True);
        $array = json_decode($result, true); 
    }
}