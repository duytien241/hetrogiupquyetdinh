<?php
	function connectDB(){
        if(!defined('DB_SERVER'))
        define("DB_SERVER", "localhost:3306");
        if(!defined("DB_USER"))
        define("DB_USER", "root");
        if(!defined("DB_PASSWORD"))
        define("DB_PASSWORD", "12345");
        if(!defined("DB_DATABASE"))
        define("DB_DATABASE", "hetrogiup");            
        $conn = mysqli_connect(DB_SERVER , DB_USER, DB_PASSWORD, DB_DATABASE);
        mysqli_set_charset($conn, 'UTF8');
        return $conn;
    }
?>