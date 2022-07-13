<?php


 function doLogout(){
     unset($_SESSION['user']);
     unset($_SESSION['logat']);

 }
function IsLogged(){
    return isset($_SESSION['logat']) && $_SESSION['logat']==TRUE;
}
function getLoggdUser(){
    return isset($_SESSION['user'])? $_SESSION['user'] : NULL;
}

 

?>