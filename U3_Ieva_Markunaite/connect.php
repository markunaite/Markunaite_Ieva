<?php

$host    = "localhost";
$user    = "root";
$pass    = "";
$db_name = "kursai";


$connection = mysqli_connect($host, $user, $pass, $db_name);

if(mysqli_connect_errno()){
    die("connection failed: "
        . mysqli_connect_error()
        . " (" . mysqli_connect_errno()
        . ")");
}

mysqli_set_charset($connection,"utf8");

?>