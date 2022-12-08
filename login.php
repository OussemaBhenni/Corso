<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/master.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="icon" href="images/favicon.png">
  <title>Corso - Log in</title>
</head>
<body>
  <!-- Section: Design Block -->
<section class=" text-center text-lg-start">
  <style>
    .rounded-t-5 {
      border-top-left-radius: 0.5rem;
      border-top-right-radius: 0.5rem;
    }

    @media (min-width: 992px) {
      .rounded-tr-lg-0 {
        border-top-right-radius: 0;
      }

      .rounded-bl-lg-5 {
        border-bottom-left-radius: 0.5rem;
      }
    }
  </style>
      <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center w-100">
          <div class="box">
      <div class="image">
        <img src="images/img4.jpg" alt="Trendy Pants and Shoes"
          class="w-100 rounded-t-5 rounded-tr-lg-0 rounded-bl-lg-5" />
      </div>
        <div class="info">
          <form method="POST" >
            <!-- Email input -->
            <div class="admin">
              JUST FOR ADMIN
            </div>
            <div >
              <input class="form-control" type="text" name="cin" id="cin" placeholder="Your Id"/>
            </div>
            <!-- Password input -->
            <div >
              <input class="form-control" type="password" name="password" id="password" placeholder="Your Password" />
            </div>
            <!-- Submit button -->
            <div style="float: right;margin-top: 90px;">
            <a href="index.html"><button type="button" name="retour" class="btn btn-solid-reg btn-lg ms-0.5">
                Back
              </button></a>
              <button type="submit" name="button" class="btn btn-solid-reg btn-lg ms-0.5">
                Send
              </button>
            </div>
<?php
session_start();
include_once "connexion.php";


if ( !isset($_POST['cin'], $_POST['password']) ) {

	exit('Fill both the CIN and password!');
}


$c=$_POST['cin'];
$p=$_POST['password'];
    $req = mysqli_query($con,"SELECT * FROM user where cin = '$c' and password = '$p' ");
    if(isset($_POST['button'])){
      if((mysqli_num_rows($req) == 0 )){
        // echo $req;
        // echo mysqli_num_rows($req);
        // echo $c;
        // echo $p;

          echo'<div class="alert alert-danger" role="alert">CIN or Password invalid</div>';
      }else {
        $_SESSION['loggedin'] = TRUE;
        header('Location: dash.php');
      }
    }
    
?>                    
        </form>
        </div>
      </div>
    </div>
</section>
<!-- Section: Design Block -->
</body>
</html>