<?php
    include "connexion.php";

    // Récupérer les informations du client à partir du formulaire
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $sexe = $_POST['sexe'];
    $salaire = $_POST['salaire'];
    $prime = $_POST['prime'];
    $service = $_POST['service'];

    // Récupérer l'identifiant du client
    $num_emp = $_GET['numemp'];

    // Préparer la requête de modification
    $sql = "UPDATE employes
            SET empnom = '$nom', 
                emppren = '$prenom',
                empsexe = '$sexe',
                empsalaire = $salaire,
                empprime = $prime,
                srvno = $service
            WHERE empno = $num_emp";

    $reponse = $con->exec($sql);

    header('Location:employes.php');
?>