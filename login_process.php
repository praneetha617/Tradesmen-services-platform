<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['email']) && isset($_POST['password'])){
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE email = :email";
    $query = $dbh->prepare($sql);
    $query->bindParam(':email', $email, PDO::PARAM_STR);
    $query->execute();
    $row = $query->fetch(PDO::FETCH_ASSOC);

    if($row && password_verify($password, $row['password'])) {
        $_SESSION['lsse_userid'] = $row['id'];
        echo 'success';
    } else {
        echo 'error';
    }
} else {
    echo 'error';
}
?>
