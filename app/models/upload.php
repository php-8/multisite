<?php

namespace app\models;

use App\models;

require'crop.php';

class Upload extends AppModel{
    
    private $file_name = array();
    private $file_size;
    private $file_tmp;
    private $file_type;
    private $user_id;
    public $filenames = [];
    
    public function __construct($file_name, $file_size, $file_tmp, $file_type, $user_id) {
        //parent::__construct();
		$this->file_name =$file_name;
		$this->file_size =$file_size;
		$this->file_tmp =$file_tmp;
		$this->file_type =$file_type;	
        $this->user_id =$user_id;
    }

    public function uploadFiles() {
        $file_name = $this->file_name;
        $file_size = $this->file_size;
        $file_tmp = $this->file_tmp;
        $file_type = $this->file_type;
        $user_id = $this->user_id;
       	//$connect = mysqli_connect('localhost','homestead','secret','albom'); 
        $dbh = new \PDO('mysql:host=localhost;dbname=example', 'printer', 'riK4IU9byTOoYIlJ');
        $desired_dir="albom";
        if(empty($errors)==true){
            if(is_dir($desired_dir)==false){
                mkdir("$desired_dir", 0700);		// Create directory if it does not exist
            }
            $random = uniqid().time().uniqid();

            $fileextension = pathinfo($file_name);

            $newfile_name = $random.'.'.$fileextension['extension'];
            
            $this->filenames = $newfile_name;
            if(is_dir("$desired_dir/".$file_name)==false){
                move_uploaded_file($file_tmp,"$desired_dir/".$newfile_name);
				//$query="INSERT into albom (`USER_ID`,`FILE_NAME`,`FILE_SIZE`,`FILE_TYPE`) VALUES('$user_id','$newfile_name','$file_size','$file_type'); ";
            
			    $sql = "INSERT into albom (`USER_ID`,`FILE_NAME`,`FILE_SIZE`,`FILE_TYPE`) VALUES(:user_id,:newfile_name,:file_size,:file_type); ";
                $query = $dbh->prepare($sql);
                $query->bindParam(':user_id', $user_id);
			    $query->bindParam(':newfile_name', $newfile_name);
				$query->bindParam(':file_size', $file_size);
				$query->bindParam(':file_type', $file_type);
				$query->execute();
                cropImage($_SERVER['DOCUMENT_ROOT'] . "/public/albom/" . $newfile_name, $_SERVER['DOCUMENT_ROOT'] . "/public/thumb/c_" . $newfile_name, 75, 75);
				
			}else{									// rename the file if another one exist
                $new_dir="$desired_dir/".$file_name.time();
                 rename($file_tmp,$new_dir) ;				
            }
		 //mysqli_query($connect, $query);			
        }else{
                print_r($errors);
        }
    }
}
?>