<?php

namespace app\controllers;

use app\models\Update;

class UpdatedbController extends AppController {

    public $newid;

    public function IndexAction() {

        if(isset($_POST['start'])) {
            $set = new Update();
            $array = $set->Get_products($_POST['productid']);
            //$images = $set->Get_images($_POST['productid']);
            // $product_to_category = $set->Get_product_to_category($_POST['productid']);
            $city = $_POST['city'];
            $metacity = ' ' . $_POST['city'] . ',';
            ob_start();  
            foreach($array['data'] as $key => $val) {
            $keyword = $val['meta_keyword_ru-RU'];
            $keyword = preg_replace('/,/', $metacity, $keyword); 
            $keyword = substr($keyword, 0, -1);
            $set->set_new_products($val['product_id'], $val['product_ean'], $val['product_quantity'], $val['product_date_added'], $val['date_modify'], $val['product_publish'], $val['product_tax_id'], $val['currency_id'], $val['product_template'], $val['product_url'], $val['product_old_price'], $val['product_buy_price'], $val['product_price'], $val['min_price'], $val['different_prices'], $val['product_weight'], $val['product_name_image'], $val['product_manufacturer_id'], $val['product_is_add_price'], $val['add_price_unit_id'], $val['average_rating'], $val['access'], $val['name_ru-RU'], $val['alias_ru-RU'], $val['short_description_ru-RU'], $val['description_ru-RU'], $val['meta_title_ru-RU'] . ', купить в ' . $city, $val['meta_description_ru-RU']  . ', купить в ' . $city, $keyword, $_POST['receiver']);
            }

            $output_products = ob_get_clean();
            $pieces = explode("},", $output_products);
            ob_start(); 
            //array_shift($pieces);
            foreach($pieces as $item) {
              $array = json_decode($item, True);
              $array['data']['lastinsertid'];
              $array['data']['originalid'];

              $product_to_category = $set->Get_product_to_category($array['data']['originalid']);
              $images = $set->Get_images($array['data']['originalid']);

              $set->set_product_to_category($array['data']['lastinsertid'], $product_to_category['data'][0]['category_id'],  $_POST['receiver']);

              //$imagesdata[] = $images['data'];
              foreach($images['data'] as $key => $val) {
              $set->set_images($array['data']['lastinsertid'], $val['image_name'], $val['name'] . ', ' . $city, $_POST['receiver']);
            }
        }
        $output = ob_get_clean();
        $this->set(compact('output_products', 'output'));
        } 
    }

    public function PriceAndQuantityAction() {

        if(isset($_POST['start'])) {
            $get = new Update();
            $array = $get->Get_all_products();
            foreach($array['data'] as $key => $val) {
                $get->update_price_and_quantity($val['product_id'], $val['product_ean'], $val['min_price'], $val['product_quantity'],$_POST['PriceAndQuantity']);
                // $ean[] = $val['product_ean'];
                // $this->set(compact('ean'));
            }
            
        }
    }
}



