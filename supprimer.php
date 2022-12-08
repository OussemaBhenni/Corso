<?php
  session_start();
  if(empty($_SESSION['loggedin'])){
      echo"PASS d'acces";
      header('Location: index.html');
  }
  include_once "connexion.php";
  $id= $_GET['id'];
  $req2 = mysqli_query($con , "SELECT * FROM etudiant where id=max(id)");
  $req = mysqli_query($con , "DELETE FROM etudiant WHERE id = $id");
  header("Location:dash.php")
?>