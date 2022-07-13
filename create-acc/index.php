 <?php
 session_start();
require_once "../admin/config.php";
include DIR_BASE . "./admin/connect.php";


$comanda=isset($_REQUEST["comanda"])?$_REQUEST["comanda"]:NULL;
 if(isset($comanda)){
  switch($comanda){
     
    case 'Create':

      $username=isset($_REQUEST["username"])?$_REQUEST["username"]:NULL;
      echo $username;
      $password=isset($_REQUEST["password"])?$_REQUEST["password"]:NULL;
      echo $password;

      if(!isset($username, $password) ) {
     // Could not get the data that should have been sent.
      exit('Please fill both the username and password fields!');
      }
      $ckeck_query="SELECT * FROM login WHERE username='$username'";
      $result=mysqli_query($conexiune,$ckeck_query);
      $user=mysqli_fetch_assoc($result);
      if($user){
        echo "<h3>User already exists!<h3>";
      }else{

      $query="INSERT INTO login (username,pass) VALUES ('$username','MD5($password)')";
      $result_query = mysqli_query($conexiune, $query);

        $_SESSION['username'] = $username;
        $_SESSION['success'] = "You are now logged in";
        //header('location: admin/index.php');
      
      
      echo "<div class='form'>
      <h3>You are registered successfully.</h3><br/>
      <p class='link'>Click here to <a href='../login-page/login.html'>Login</a></p>
      </div>";
    
    }
    }
 }
include "create-acc.html";


?> 