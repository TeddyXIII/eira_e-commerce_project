<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "art_gallery";

//creating connection
$conn = new mysqli($servername, $username, $password, $database);

//connection check
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "Connected successfully";

?>