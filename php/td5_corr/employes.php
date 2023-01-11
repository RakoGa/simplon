<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employes</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="icon-font/lineicons.css">
</head>
<body>
    <?php include_once 'templates/navbar.php' ?>
    <?php include 'connexion.php' ?>
    <?php
        // Requête SQL
        $sql = 'SELECT * FROM employes';
        // Envoyer la requête au serveur et récupérer le résultat
        $reponse = $con->query($sql);

        $employes = $reponse->fetchAll(PDO::FETCH_ASSOC);
    ?>
    
    <div class="container">
        <hr>
        <div class="row">
            <a href="createEmploye.php">
                <button class="btn btn-primary"><i class="lni lni-user"></i> Nouvel employé</button>
            </a>
        </div>
        <hr>
        <div class="row">
            <div class="col-lg-12">
                <?php
                ?>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <table class="table table-hover table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th>Numéro</th>
                            <th>Nom</th>
                            <th>Prénom</th>
                            <th>Sexe</th>
                            <th>Salaire</th>
                            <th>Prime</th>
                            <th>Service</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($employes as $employe) : ?>
                            <tr>
                                <td><?php echo $employe["EMPNO"] ?></td>
                                <td><?= $employe["EMPNOM"] ?></td>
                                <td><?= $employe["EMPPREN"] ?></td>
                                <td><?= $employe["EMPSEXE"] ?></td>
                                <td><?= $employe["EMPSALAIRE"] ?></td>
                                <td><?= $employe["EMPPRIME"] ?></td>
                                <td><?= $employe["SRVNO"] ?></td>
                                <td>
                                    <a onclick="return confirm('supprimer?')" href="deleteEmploye.php?empno=<?= $employe["EMPNO"] ?>"><i class="lni lni-trash-can"></i></a> 
                                    <a onclick="return confirm('modifier?')" href="updateFormEmploye.php?empno=<?= $employe["EMPNO"] ?>"><i class="lni lni-pencil"></i></a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <?php include 'templates/footer.html' ?>

    <script src="js/bootstrap.min.js"></script>
</body>
</html>