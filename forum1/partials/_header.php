<?php
session_start();

echo'<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> 
    <div class="container-fluid">
        <a class="navbar-brand" href="/php/forum1">iDiscuss</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" style="justify-content: inherit;" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/php/forum1">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/php/forum1/about.php">About</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                        Categories
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="/php/forum1/contect.php">contect</a>
            </li>
                
            </ul>
        </div>';
        if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true){
            echo '<form class="form-inline my-2 my-lg-0" method="get" action="search.php">
    <input class="form-control mr-sm-2" name="search" type="search" actiion="search.php" placeholder="Search" aria-label="Search">
    <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
      <p class="text-light my-0 mx-2">Welcome '. $_SESSION['user_email']. ' </p>';
        }
        else{
             echo '<form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
                </form>
                <button class="btn btn-outline-success ml-2" data-toggle="modal" data-target="#loginModal">Login</button>
                <button class="btn btn-outline-success mx-2" data-toggle="modal" data-target="#signupmodal">Signup</button>';
  }
        
   echo' </div>
</nav>';
include 'partials/_loginmodal.php';
include 'partials/signupmodal.php';
if(isset($_GET['signupsuccess']) && $_GET['signupsuccess']=="true"){
    echo'
         <div class="alert alert-success alert-dismissible fade show mb-0" role="alert">
            <strong>Success!</strong> You can now  login.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden = "true">&times;</span>
            </button>
        </div>';
}
