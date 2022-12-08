<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link href="css/styles.css" rel="stylesheet">
  <link rel="icon" href="images/favicon.png">
  <title>Corso - Sign up</title>
</head>
<body class="body">
  <section class="h-100">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col">
          <div class="card card-registration my-4">
            <div class="row g-0 box">
              <div class="col-xl-4 d-none d-xl-block">
                <img src="images/img4.jpg"
                  alt="Sample photo" class="img-fluid"
                  style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
              </div>
              
          
                  <form method="POST" class="col-xl-8">
                  <?php
              

              if(isset($_POST['button'])){
                  extract($_POST);
                  if (!empty($_POST))
                  {
                  $nom=$_POST['nom'];
                  $prenom=$_POST['prenom'];
                  $id=$_POST['id'];
                  $age=$_POST['age'];
                  $mail=$_POST['mail'];
                  $inlineRadioOptions =$_POST['genders'];    
                }


                if(isset($nom) && isset($prenom) && isset($id) && isset($age) && isset($mail)){
                      include_once "connexion.php";
                      $req = mysqli_query($con , "INSERT INTO  etudiant ( Nom, Prenom,Cin,Age,Email,Sexe) VALUES( '$nom', '$prenom','$id','$age','$mail','$inlineRadioOptions')");
                      if($req){//si la requête a été effectuée avec succès , on fait une redirection
                          header("location: congrats.php?nom=$nom");
                      }else {//si non
                            $message = "Etudiant non ajouté";
                            echo $nom, $prenom,$id,$age,$mail,$inlineRadioOptions;
                        }
                }else {

                      $message = "Veuillez remplir tous les champs !";
                  }
              }

            ?>
                    <div class="card-body p-md-5 text-black">
                      <h3 class="mb-5 text-uppercase">Registration Form</h3>
                      <div class="row">
                        <div class="col-md-6 mb-4">
                          <div class="form-outline">
                            <input type="text" name="nom" required class="form-control form-control-lg" />
                            <label class="form-label" for="form3Example1m">Last Name</label>
                          </div>
                        </div>
                        <div class="col-md-6 mb-4">
                          <div class="form-outline">
                            <input type="text" name="prenom" required class="form-control form-control-lg" />
                            <label class="form-label" for="form3Example1n">First Name</label>
                          </div>
                        </div>
                      </div>
      
                      <div class="row">
                        <div class="col-md-6 mb-4">
                          <div class="form-outline">
                            <input type="Number" name="id" required class="form-control form-control-lg" />
                            <label class="form-label" for="form3Example1m1">Id</label>
                          </div>
                        </div>  
                        <div class="col-md-6 mb-4">
                          <div class="form-outline">
                            <input type="number" required name="age" class="form-control form-control-lg" />
                            <label class="form-label" for="form3Example1n1">Age</label>
                          </div>
                        </div>
                      </div>
      
                      <div class="form-outline mb-4">
                        <input type="mail" required name="mail" class="form-control form-control-lg" />
                        <label class="form-label" for="form3Example8">Mail</label>
                      </div>
      
                      <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
      
                        <h6 class="mb-0 me-4">Sex: </h6>
      
                        <div class="form-check form-check-inline mb-0 me-4">
                          <input class="form-check-input" type="radio" required  name="genders" value="female"
                            value="option1" />
                          <label class="form-check-label" for="femaleGender">Female</label>
                        </div>
      
                        <div class="form-check form-check-inline mb-0 me-4">
                          <input class="form-check-input" type="radio" name="genders" value="male"
                            value="option2" />
                          <label class="form-check-label" for="maleGender">Male</label>
                        </div>
    
      
                      </div>
    
      
    
                      <div class="d-flex justify-content-end pt-3">
                        
                        <a href="index.html"><input ref="index.html" type="button" name="retour" class="btn btn-solid-reg ms-2 retour" value="Back"/></a>
                        <input type="submit" name="button" class="btn btn-solid-reg ms-2" value="Send"/>
                      </div>
      
                    </div>
                  </form>
                </div>
                
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>