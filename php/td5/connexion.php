<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <header>
        <p>Gestion des employés</p>
        <a href="index.php">Home</a>
        <a href="employes.php">Employés</a>
    </header>

    <form action="#" method="post">
        <fieldset>
            <legend>Connexion</legend>
            <?php
                if (($_SERVER['REQUEST_METHOD'] == 'POST')) {
                    if (isset($_POST["login"], $_POST["pw"])) {
                        if (empty($_POST["login"]) || !empty($_POST["pw"]) || $_POST["login"] != "root") {
                            echo "<p style=\"color: red\">Identifiants incorrects</p>";
                        }
                    }
                }
            ?>
            <label for="login">Identifiant: </label>
            <input type="text" name="login" id="login" autofocus>
            <br>

            <label for="pw">Mot de passe: </label>
            <input type="text" name="pw" id="pw">
            <br>

            <button type="submit">Envoyer</button>
            <input type="reset" value="Annuler">
        </fieldset>
    </form>

    <?php
        if ((!empty($_POST["login"]) && $_POST["login"] == "root") && empty($_POST["pw"])) {
            session_start();
            $_SESSION["login"] = $_POST["login"];
            $_SESSION["pw"] = '';
            header("location: employes.php");
            exit();
        }
    ?>
</body>
</html>