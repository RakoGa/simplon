<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employés</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="icon-font/lineicons.css">
</head>
<body>
    <?php include_once 'templates/navbar.php' ?>
    <?php include 'connexion.php' ?>

    <div class="container">
        <?php
            if (!empty($_POST)) {
                // Récupérer les informations du client à partir du formulaire
                $nom = $_POST['nom'];
                $prenom = $_POST['prenom'];
                $sexe = $_POST['sexe'];
                $salaire = $_POST['salaire'];
                $prime = $_POST['prime'];
                $service = $_POST['service'];

                // Ajouter le contenu dans la table client dans la BD
                // Préparer la requête d'insertion
                $sql = "INSERT INTO employes (empnom, emppren, empsexe, empsalaire, empprime,srvno) 
                        VALUES ('$nom', '$prenom', '$sexe', '$salaire', $prime, $service)";
                // Envoyer la requête
                $reponse = $con->exec($sql);

                if ($reponse) {
                    echo '<div class="alert alert-success" role="alert">';
                        echo "Insertion efféctuée avec succès";
                    echo '</div>';
                } else {
                    echo '<div class="alert alert-danger" role="alert">';
                        echo "Problème d'insertion du client";
                    echo '</div>';    
                }
            }
        ?>
        <hr>
        <fieldset>
            <legend><h2>Nouvel Employé</h2></legend>
            <hr>
            <form action="<?= $_SERVER['PHP_SELF'] ?>" method="post">
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="nom">Nom</label>
                    <div class="col-sm-7">
                        <input type="text" name="nom" class="form-control" id="nom" placeholder="">
                    </div>
                </div>
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="prenom">Prénom</label>
                    <div class="col-sm-7">
                        <input type="text" name="prenom" class="form-control" id="prenom" placeholder="">
                    </div>
                </div>
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="Sexe">Sexe</label>
                    <div class="col-sm-7">
                        <input type="text" name="sexe" class="form-control" id="sexe" placeholder="">
                    </div>
                </div>
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="salaire">Salaire</label>
                    <div class="col-sm-7">
                        <input type="text" name="salaire" class="form-control" id="salaire" placeholder="">
                    </div>
                </div>
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="prime">Prime</label>
                    <div class="col-sm-7">
                        <input type="tel" name="prime" class="form-control" id="prime" placeholder="">
                    </div>
                </div>
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="prime">Service</label>
                    <div class="col-sm-7">
                        <input type="tel" name="service" class="form-control" id="service" placeholder="">
                    </div>
                </div>
                <!-- <div class="row mb-1">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" required>
                            <label class="form-check-label"> Contrat lu et accepté</label>
                        </div>
                    </div>
                </div> -->
                <div class="">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" name="btValider" class="btn btn-primary">Valider</button>
                    </div>
                </div>
            </form>
        </fieldset>
    </div>

    <?php include 'templates/footer.html' ?>

    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>