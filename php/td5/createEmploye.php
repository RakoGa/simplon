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
        <a href="employes.php">Employés</a>
    </header>

    <hr>
    <h1>Nouvel employé</h1>
    <hr>

    <?php 
        if (($_SERVER['REQUEST_METHOD'] == 'POST')) {
            if (empty($_POST["nom"]) || empty($_POST["prenom"]) || empty($_POST["sexe"]) || empty($_POST["salaire"]) || empty($_POST["prime"])) {
                echo "<p style=\"color: red\">Données mal renseignées!</p>";
            } elseif ((($_POST["sexe"] != 'M') && ($_POST["sexe"] != 'F') || preg_match("/[a-z]/i", $_POST["salaire"]) || preg_match("/[a-z]/i", $_POST["prime"]))) {
                echo "<p style=\"color: red\">Données mal renseignées!</p>";
            } else {
                echo "<p style=\"color: green\">Données enregistrées!</p>";
            }
        }
    ?>

    <?php
        try {
            // $bdd = new PDO('mysql:host=localhost;dbname=societe;charset=utf8', $_SESSION["login"], $_SESSION["pw"]);
            // unset($_SESSION["root"], $_SESSION["pw"]);
            $bdd = new PDO('mysql:host=localhost;dbname=societe;charset=utf8', 'root', '');
        } catch (Exception $e) {
            die('Erreur: ' . $e->getMessage());
        }
    ?>

    <form action="#" method="post">
        <fieldset>
            <table>
                <tr>
                    <td><label for="nom">Nom: </label></td>
                    <td><input type="text" name="nom" id="nom"></td>
                </tr>
                <tr>
                    <td><label for="prenom">Prénom: </label></td>
                    <td><input type="text" name="prenom" id="prenom"></td>
                </tr>
                <tr>
                    <td><label for="sexe">Sexe (M/F): </label></td>
                    <td><input type="text" name="sexe" id="sexe"></td>
                </tr>
                <tr>
                    <td><label for="salaire">Salaire: </label></td>
                    <td><input type="text" name="salaire" id="salaire"></td>
                </tr>
                <tr>
                    <td><label for="prime">Prime: </label></td>
                    <td><input type="text" name="prime" id="prime"></td>
                </tr>
                <tr>
                    <td><label for="service">Service: </label></td>
                    <td>
                        <select name="service" id="">
                            <?php 
                                $allSrv = $bdd->query('SELECT * FROM services;');

                                while ($data = $allSrv->fetch()) {
                                    echo "<option>" . $data["SRVNO"] . "</option>";
                                }
                            ?>
                        </select>
                    </td>
                </tr>
            </table>
        </fieldset>
        <input type="submit" value="Valider">
    </form>

    <?php
        if (!empty($_POST["nom"]) && !empty($_POST["prenom"]) && !empty($_POST["sexe"]) && !empty($_POST["salaire"]) && !empty($_POST["prime"])) {
            if ((($_POST["sexe"] == 'M') || ($_POST["sexe"] == 'F')) && !preg_match("/[a-z]/i", $_POST["salaire"]) && !preg_match("/[a-z]/i", $_POST["prime"])) {
                $bdd->exec('INSERT INTO employes (EMPNOM, EMPPREN, EMPSEXE, EMPSALAIRE, EMPPRIME, SRVNO) VALUES (\'' . $_POST["nom"] . '\', \'' . $_POST["prenom"] . '\', \'' . $_POST["sexe"] . '\', ' . (float)$_POST["salaire"] . ', ' . (float) $_POST["prime"] . ', ' . (int)$_POST["service"] . ');');
            }
        }
    ?>
</body>
</html>