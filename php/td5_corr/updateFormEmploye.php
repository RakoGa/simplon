<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>clients</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="icon-font/lineicons.css">
</head>
<body>
    <?php include_once 'templates/navbar.php' ?>
    <?php include 'connexion.php' ?>

    <div class="container">
        <?php
            // Récupérer l'id du client à supprimer
            $num_emp = $_GET['empno'];
                
            // Récupérer les infos du client à modifier
            $sql = "SELECT * FROM employes WHERE empno= $num_emp";
            $reponse = $con->query($sql);

            $employe = $reponse->fetch(PDO::FETCH_ASSOC);

        ?>
        <hr>
        <fieldset>
            <legend><h2>Modifier l'employé</h2></legend>
            <hr>
            <form action="updateEmploye.php?numemp=<?= $num_emp ?>" method="post">
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="nom">Nom</label>
                    <div class="col-sm-7">
                        <!-- <input type="text" name="nom" class="form-control" id="nom" value=value=" placeholder=""> -->
                        <input type="text" name="nom" class="form-control" id="nom" value="<?= $employe['EMPNOM'] ?>">
                    </div>
                </div>
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="prenom">Prénom</label>
                    <div class="col-sm-7">
                        <input type="text" name="prenom" class="form-control" id="prenom" value="<?= $employe['EMPPREN'] ?>">
                    </div>
                </div>
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="dateN">Date de naissance</label>
                    <div class="col-sm-7">
                        <input type="text" name="sexe" class="form-control" id="sexe" value="<?= $employe['EMPSEXE'] ?>">
                    </div>
                </div>
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="adresse">Adresse</label>
                    <div class="col-sm-7">
                        <input type="text" name="salaire" class="form-control" id="salaire" value="<?= $employe['EMPSALAIRE'] ?>">
                    </div>
                </div>
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="tel">Téléphone</label>
                    <div class="col-sm-7">
                        <input type="text" name="prime" class="form-control" id="prime" value="<?= $employe['EMPPRIME'] ?>">
                    </div>
                </div>
                <div class="row mb-1">
                    <label class="col-sm-2 col-form-label" for="tel">Service</label>
                    <div class="col-sm-7">
                        <input type="text" name="service" class="form-control" id="service" value="<?= $employe['SRVNO'] ?>">
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
                <div>
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" name="btValider" class="btn btn-secondary">Valider</button>
                    </div>
                </div>
            </form>
        </fieldset>
    </div>

    <?php include 'templates/footer.html' ?>

    <script src="js/bootstrap.min.js"></script>
</body>
</html>