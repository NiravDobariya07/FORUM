<?php
$showError = "false";   
if($_SERVER["REQUEST_METHOD"] == "POST"){
    include '_dbconnect.php';
    $user_email = $_POST['signupemail'];
    $pass = $_POST['signupPassworld'];
    $cpass = $_POST['signupcPassworld'];

    // check whether this email exits
    $existsql = "select * from `users` where user_email = '$user_email'";
    $result = mysqli_query($conn,$existsql);
    $numRows =mysqli_num_rows($result);
    if($numRows>0){
        $showError = "Email already in use ";
    }
    else{
        if($pass == $cpass){
          $hash = password_hash($pass,PASSWORD_DEFAULT);
          $sql = "INSERT INTO `users` (`user_email`, `user_pass`, `datetime`) VALUES ('$user_email', '$hash', current_timestamp())";
          $result = mysqli_query($conn,$sql);
           if($result){
            $showError = true;
            header("location: /php/forum1/index.php?signupsuccess=true");
            exit();
           }
        }
        else{
            $showError = "password do not match";
        }
    }
    header("location:/php/forum1/index.php?signupsuccess=false&error=$showError");

}
?>