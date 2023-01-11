<?php
    include "connexion.php";
    
    // Récupérer l'id du client à supprimer
    $num_emp = $_GET['empno'];


    // Supprimer le client avec l'id récupéré
    // Préparer la requête SQL
    $sql = "DELETE FROM employes WHERE empno = $num_emp";

    // Exécuter le requête
    $rep = $con->exec($sql);

    // Retourner vers la page clients.php
    header('Location:employes.php');
?>