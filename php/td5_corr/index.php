<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Index</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="icon-font/lineicons.css">
  </head>
  <body>
    <?php include_once 'templates/navbar.php' ?>
    <div class="container">
      <hr>
      
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-xl-2 g-3">
        <div class="col">
          <div class="card border-primary mb-3" >
            <div class="card-header text-center text-primary"><h2><i class="lni lni-user"></i> Employés </h2></div>
            <div class="card-body text-primary">
              <h5 class="card-title"> Accéder à la section de gestion des employés :</h5>
              <p class="card-text">
                <ul>
                    <li>Ajouter un nouveau employé, modifier, supprimer</li>
                    <li>Afficher un état</li>
                    <li>etc.</li>
                </ul>
                Cliquer sur le bouton ci-dessous.
              </p>
            </div>
            <div class="card-footer bg-transparent border-success d-grid gap-2">
            <a href="employes.php" class="btn btn-outline-primary btn-block">Accéder à la page employés</a>
            </div>
          </div>
        </div>
    </div>
    <?php include 'templates/footer.html' ?>

    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
