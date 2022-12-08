<?php
  //connexion de BD
  $con = mysqli_connect("localhost","root","","universite");
  if(!$con){
    echo "Vous n'êtes pas connecté à la base de donnée";
  }
?>