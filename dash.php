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
    <title>Corso - Training Course Landing Page Template</title>
    
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
    <title>Corso - Training Course Landing Page Template</title>
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
                    <a class="nav-link page-scroll" href="logout.php">LOG OUT <span class="sr-only">(current)</span></a>
                </li>

            </ul>
        </div>
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->


    <!-- Header -->
    <header id="header" class="header">
        
            
                <div >
                <table style="margin: auto;background-color:black;">
                    <tr id="items">
                        <th>#</th>
                        <th>Nom</th>
                        <th>Prénom</th>
                        <th>Cin</th>
                        <th>Age</th>
                        <th>Email</th>
                        <th>Sexe</th>
                        <th>Modifier</th>
                        <th>Supprimer</th>
                    </tr>
                    <?php 
                        session_start();
                        if(empty($_SESSION['loggedin'])){
                            echo"PASS d'acces";
                            header('Location: index.html');
                        }
                        include_once "connexion.php";
                        $req = mysqli_query($con , "SELECT * FROM etudiant");
                        if(mysqli_num_rows($req) == 0){
                            echo "Il n'y a pas encore d'etudiant ajouter !" ;
                            
                        }else {
                            while($row=mysqli_fetch_assoc($req)){
                                ?>
                                <tr>
                                    <td><?=$row['Id']?></td>
                                    <td><?=$row['Nom']?></td>
                                    <td><?=$row['Prenom']?></td>
                                    <td><?=$row['Cin']?></td>
                                    <td><?=$row['Age']?></td>
                                    <td><?=$row['Email']?></td>
                                    <td><?=$row['Sexe']?></td>
                                    <td><a href="modifier.php?id=<?=$row['Id']?>"><img src="images/pen.png"></a></td>
                                    <td><a href="supprimer.php?id=<?=$row['Id']?>"><img src="images/trash.png"></a></td>
                                </tr>

                                
                                <?php
                            }
                        }
        
                    ?>
        
                </table>
                <a href="ajouter.php"><button type="button" class="btn btn-solid-reg add justify-content-end">Add Student</button></a>
                </div>
        

    </header> 
    <!-- end of header -->

















    <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="p-small">Copyright © 2022 <a >Nour & Oussema</a> - All rights reserved</p>
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