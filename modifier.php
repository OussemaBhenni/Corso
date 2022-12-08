<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO Meta Tags -->
    <meta name="description" content="Landing page template built with HTML and Bootstrap 4 for presenting training courses, classes, workshops and for convincing visitors to register using the form.">
    <meta name="author" content="Inovatik">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->
	<meta property="og:site_name" content="" /> <!-- website name -->
	<meta property="og:site" content="" /> <!-- website link -->
	<meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
	<meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
	<meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
	<meta property="og:url" content="" /> <!-- where do you want your post to link to -->
	<meta property="og:type" content="article" />

    <!-- Website Title -->
    <title>Corso - Edit</title>
    
    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,600,700,700i&display=swap" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/magnific-popup.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	
	<!-- Favicon  -->
    <link rel="icon" href="images/favicon.png">
</head>
<body data-spy="scroll" data-target=".fixed-top">
    
    <!-- Preloader -->
	<div class="spinner-wrapper">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </div>
    <!-- end of preloader -->
    

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">


        <!-- Image Logo -->
        <a class="navbar-brand logo-image" href="index.html"><img src="images/logo.svg" alt="alternative"></a> 
        
        <!-- Mobile Menu Toggle Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-awesome fas fa-bars"></span>
            <span class="navbar-toggler-awesome fas fa-times"></span>
        </button>
        <!-- end of mobile menu toggle button -->

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="#register">LOG OUT <span class="sr-only">(current)</span></a>
                </li>

            </ul>
        </div>
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->


    <!-- Header -->
    <header id="header" class="header">
        <div class="container">
            <div class="row justify-content-center">
            <?php
    session_start();
    if(empty($_SESSION['loggedin'])){
        echo"PASS d'acces";
        header('Location: index.html');
    }

    include_once "connexion.php";

    $id = $_GET['id'];

 //requête pour afficher les infos d'un employé
 $req = mysqli_query($con , "SELECT * FROM etudiant WHERE Id = $id");
    $row = mysqli_fetch_assoc($req);


//vérifier que le bouton ajouter a bien été cliqué
if(isset($_POST['button'])){
  //extraction des informations envoyé dans des variables par la methode POST
    extract($_POST);
  //verifier que tous les champs ont été remplis
    if(isset($Nom) && isset($Prenom) && $Age){
      //requête de modification
        $req = mysqli_query($con,"UPDATE etudiant SET  Nom = '$Nom', Prenom = '$Prenom', Cin = '$Cin', Age = '$Age', Email = '$Email', Sexe = '$Sexe' WHERE `Id` = '$id'");
        if($req){//si la requête a été effectuée avec succès , on fait une redirection
            header("location: dash.php");
        }else {//si non
            $message = "Etudiant non modifié";
        }

    }else {
      //si non
    $message = "Veuillez remplir tous les champs !";
    }
}

?>

<div class="form">
<a href="dash.php" class="back_btn"><img src="images/back.png"> Retour</a>
<h2>Edit Student: <?=$row['Nom']?> </h2> 
<p class="erreur_message">
<?php 
    if(isset($message)){
        echo $message ;
    }
?>
</p>
<form action="" method="POST">
    <label>Nom</label>
    <input type="text" name="Nom" value="<?=$row['Nom']?>">
    <label>Prénom</label>
    <input type="text" name="Prenom" value="<?=$row['Prenom']?>">
    <label>Cin</label>
    <input type="number" name="Cin" value="<?=$row['Cin']?>">
    <label>Age</label>
    <input type="text" name="Age" value="<?=$row['Age']?>">
    <label>Email</label>
    <input type="text" name="Email" value="<?=$row['Email']?>">
    <label>Sexe</label>
    <input type="text" name="Sexe" value="<?=$row['Sexe']?>">
    <input type="submit" class="btn btn-solid-reg" value="Modifier" name="button">
</form>
</div>
            </div>
        </div> <!-- end of container -->
    </header> <!-- end of header -->
    <!-- end of header -->








    <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="p-small">Copyright © 2022>Nour & Oussema</a> - All rights reserved</p>
                </div> <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->
    </div> <!-- end of copyright --> 
    <!-- end of copyright -->
    
    <!-- Scripts -->
    <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="js/popper.min.js"></script> <!-- Popper tooltip library for Bootstrap -->
    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="js/jquery.countdown.min.js"></script> <!-- The Final Countdown plugin for jQuery -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="js/validator.min.js"></script> <!-- Validator.js - Bootstrap plugin that validates forms -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
</body>
</html>