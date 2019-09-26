<?php

namespace App\models;

class AppModel {

    protected $dbconnect;

    public function __construct() {

        function getDB() {

            $dbhost= 'localhost';
            $dbuser= 'printer';
            $dbpass= 'riK4IU9byTOoYIlJ';
            $dbname= 'example';
        
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