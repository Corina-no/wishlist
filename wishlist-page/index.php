<?php 

@session_start();
$username=$_SESSION['username'];

require_once "../admin/config.php";
include DIR_BASE . "/admin/connect.php";
include DIR_BASE . "/admin/admin-functions.php";
include DIR_BASE . 'OpenGraphNode.php';

//include  "/admin/index.php";

include "wishlist.html";



if(isset($_SESSION['username'])){

   $comanda = isset($_REQUEST['comanda']) ? $_REQUEST['comanda'] : "";

      if (!empty($comanda)) {
          switch ($comanda){
            case 'Log Out':    
              session_destroy();
              unset ($_SESSION['username']);
              header("location: ../login-page/login.html");
              break;
          
            case 'Add new item to your wish list':
                header("location: add-new.html");
                break;

            case 'Add':    
                 $link = isset($_REQUEST["add"])?$_REQUEST["add"]:NULL;
                 $var="SELECT * FROM wishlist WHERE username='$username' AND link='$link'";
                 $result1 = $conexiune->query($var);
  
            
                $sql="INSERT INTO wishlist(username, link) VALUES ('$username','$link') ";
                if (!mysqli_query($conexiune, $sql)) {
                      die('Error: ' . mysqli_error($conexiune));
                   }

               echo "<div class='succes'>Intrare adaugata cu succes</div>";
               $returnValues=array();
               $graph = OpenGraph::fetch($link);

               
               foreach ($graph as $key => $value) {
                switch ($key) {
                    case 'title':
                        $returnValues['title'] = $value;

                        $value1=$value;
                        break;
                    case 'description':
                        $returnValues['description'] = $value;
                        $value2=$value;
                        break;
 
                        break;
                    case 'image':
                        $returnValues['image'] = $value;
                        $value3=$value;
                        break;
                }
            }

               
               $sqlgc="INSERT INTO product (link, title, description, imagine) VALUES ( '$link','$value1', '$value2', '$value3' )";
               if (!mysqli_query($conexiune, $sqlgc)) {
                die('Error: ' . mysqli_error($conexiune));
               }
             
               ?>
               <!-- for( every row) -->
               <ul>
                   <li><?php print $value1?></li>
                   <li><?php print $value2?></li>
                   <li><?php print $value3 ?></li>
                   <input type = "submit" name="comanda" value="Delete item" id="delete-btn">
                   <input type = "submit"  name="comanda" value="Edit item" id="edit-btn">
              </ul>
               <?php
               break;
            case 'Back to wish list':
                header("location : wishlist.html");  
                break; 
}
}
}
?>
