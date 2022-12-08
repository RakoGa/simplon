<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
    if (!isset($_SESSION)) {
        session_start();
    }
    ?>
    
    <header>
        <p>Gestion des employés</p>
        <a href="index.php">Home</a>
        <a href="#">Employés</a>
    </header>

    <hr>
    <a href="createEmploye.php">Nouvel employé</a>
    <hr>

    <?php
        try {
            // $bdd = new PDO('mysql:host=localhost;dbname=societe;charset=utf8', $_SESSION["login"], $_SESSION["pw"]);
            // unset($_SESSION["root"], $_SESSION["pw"]);
            $bdd = new PDO('mysql:host=localhost;dbname=societe;charset=utf8', 'root', '');
        } catch (Exception $e) {
            die('Erreur: ' . $e->getMessage());
        }
    ?>

    <table>
        <tr>
            <th>Numéro</th>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Sexe</th>
            <th>Salaire</th>
            <th>Prime</th>
            <th>Service</th>
            <th>Chef du service?</th>
        </tr>

        <?php 
            $allEmp = $bdd->query('SELECT * FROM employes;');

            while ($data = $allEmp->fetch()) {
                echo "<tr>";
                echo "<td>" . $data["EMPNO"] . "</td>";
                echo "<td>" . $data["EMPNOM"] . "</td>";
                echo "<td>" . $data["EMPPREN"] . "</td>";
                echo "<td>" . $data["EMPSEXE"] . "</td>";
                echo "<td>" . $data["EMPSALAIRE"] . "</td>";
                echo "<td>" . $data["EMPPRIME"] . "</td>";
                echo "<td>" . $data["SRVNO"] . "</td>";
                if ($data["CHEFSRV"] == 0) {
                    echo "<td>Non</td>";
                } elseif ($data["CHEFSRV"] == 1) {
                    echo "<td>Oui</td>";
                }
                echo "<td><a href=\"\">Modifier</a> <a href=\"\">Supprimer</a></td>";
                echo "</tr>";
            }
        ?>

    </table>
</body>
</html>