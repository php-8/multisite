<?php
namespace app\models;
use fw\core\base\Model;
use \CURLFile;

class uploader extends Model {
        public $sites = array('printerufa.ru', 'printervoronezh.ru', 'printersochi.ru', 'printerivanovo.ru', 'printergroznyi.ru');
        public $timestamp; 
        public $name;
        public $translit;
        public $short_description;
        public $description;
        public $meta_title;
        public $meta_description;
        public $meta_keywords;
        public $method;
        public $price;
        public $amount;
        public $category;
        public $img;
        public $product_template;
        public $filetmpname;
        public $filetype;
        public $filename;
      
        public function __construct ($timestamp, $name, $translit, $short_description, $description, $meta_title, $meta_description, $meta_keywords, $method, $price, $amount, $category, $img, $product_template, $filetmpname, $filetype, $filename) {
          $this->timestamp = $timestamp;
          $this->name = $name;
          $this->translit = $translit;
          $this->short_description = $short_description;
          $this->description = $description;
          $this->meta_title = $meta_title;
          $this->meta_description = $meta_description;
          $this->meta_keywords = $meta_keywords;
          $this->method = $method;
          $this->price = $price;
          $this->amount = $amount;
          $this->category = $category;
          $this->img = $img;
          $this->product_template = $product_template;
          $this->filetmpname = $filetmpname;
          $this->filetype = $filetype;
          $this->filename = $filename;
        }
      
        public function mainAction () {
        foreach($this->sites as $site) {
        $url = $site . "/administrator/api/setter/api.php?name=" . urlencode($this->name) . "&translit=" . urlencode($this->translit) . "&short_description=" . urlencode($this->short_description) . "&description=" . urlencode($this->description) . "&meta_title=" . urlencode($this->meta_title) . "&meta_description=" . urlencode($this->meta_description) . "&meta_keywords=" . urlencode($this->meta_keywords) . "&price=" . urlencode($this->price) . "&amount=" . urlencode($this->amount) . "&category=" . urlencode($this->category) . "&img=" . urlencode($this->img) . "&product_template=" . urlencode($this->product_template) . "&method=" . urlencode($this->method);
        $client = curl_init($url);
        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($client);
        $result = json_decode(json_encode($response), True);
        $array = json_decode($result,true); 
        print_r($array['data']);
          }
        }

        public function uploader() {
        $ch = curl_init();
        // for($i=0; $i<count($_FILES['image']['tmp_name']); $i++) {
        //   $cfile['image['.$i.']'] = new CurlFile($_FILES["image"]["tmp_name"][$i], $_FILES["image"]["type"][$i], $_FILES["image"]["name"][$i]);
        // }
        $cfile = new CURLFile($this->filetmpname, $this->filetype, $this->filename);
        $token = 'create';
        $data = array(
            "myimage"=>$cfile,
            "timestamp"=>$this->timestamp,
            "product_quantity"=>$this->amount,
            "name"=>$this->name,
            "translit"=>$this->translit,
            "short_description"=>$this->short_description,
            "description"=>$this->description,
            "meta_title"=>$this->meta_title,
            "meta_description"=>$this->meta_description,
            "meta_keywords"=>$this->meta_keywords,
            "method" => $this->method,
            "price"=>$this->price,
            "category"=>$this->category,
            "product_template"=>$this->product_template,
            "token"=>$token
        );
        foreach($this->sites as $site) {
          curl_setopt($ch, CURLOPT_URL, $site . "/administrator/api/setter/api.php");
          curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
          curl_setopt($ch, CURLOPT_POST, true);
          curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        
          $response = curl_exec($ch);
          $result = json_decode(json_encode($response), True);
          $array = json_decode($result,true); 
          //print_r($array['data']);
        }
      }
    }  