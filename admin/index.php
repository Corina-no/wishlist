<?php
session_start();
require_once "config.php";
include DIR_BASE . "/admin/connect.php";
include DIR_BASE . "/admin/admin-functions.php";
?>
<h1 >Wish List</h1>
<?php

 $comanda=isset($_REQUEST["comanda"])?$_REQUEST["comanda"]:NULL;
 if(isset($comanda)){
    switch($comanda){

        case 'Login':
            $username=isset($_REQUEST["username"])?$_REQUEST["username"]:NULL;
            $password=isset($_REQUEST["password"])?$_REQUEST["password"]:NULL;
            
       
          
            if (empty($username)) {
                echo "Username is required";
            }elseif (empty($password)) {
                echo "Password is required";
            }else{
                $username = mysqli_real_escape_string($conexiune, $_REQUEST['username']);
                $password = mysqli_real_escape_string($conexiune, $_REQUEST['password']);
               
            
            $sql="SELECT * FROM `login` WHERE `username`='$username' AND `pass`='MD5($password)'";
            $results=mysqli_query($conexiune,$sql) or die( mysqli_error($conexiune));
            mysqli_store_result($conexiune);

            
            $v=mysqli_num_rows($results);
            
            if ($v == 1) {
                $_SESSION['username'] = $username;
                $_SESSION['success'] = "You are now logged in";
                header('location: ../wishlist-page/index.php');
            

              }else {
                  echo "Login failed!";
                   
                   
              }
            }
            

     
              
     }
 }
 if(!isLogged()){
    echo"<script>alert('Invalid Username or password. Login Failed!');window.location.href=' ../login-page/login.html';</script>";

     
 }

?>