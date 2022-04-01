<?php

$conn = mysqli_connect('localhost','root','','file_upload');

    if($conn){
    //    echo "connected";
        $errors = '';
        if($_SERVER['REQUEST_METHOD']=='POST'){
            $name = $_POST['name'];
            $desc = $_POST['desc'];
            $file = $_FILES['file'];

            $file_name = $file['name'];
            $file_size =$file['size'];
            $file_tmp =$file['tmp_name'];
            $file_type=$file['type'];
            
            if($file_size > 2097152){
                $errors='File size must be excately 2 MB';
            }
            $status=false;
            if(empty($errors)==true){
                if(move_uploaded_file($file_tmp,"images/".$file_name)){
                    $query = "INSERT INTO `file` ( `file`, `name`, `description`, `uploaded_at`) VALUES ( '$file_name', '$name', '$desc', current_timestamp());";
                    if($conn->query($query)){
                        $status =true;
                    }
                }                
            }else{
                print_r($errors);
            }
            $response = [
                'errors'=>$errors,
                'status'=>$status
            ];
            echo json_encode($response);
        }else{
            die('invalid');
        }
    }else{
        die('Connection Failed');
    }


?>