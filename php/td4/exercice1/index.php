<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="#" method="post">
        <fieldset>
            <h1>Contactez-nous!</h1>
            <h2>Veuillez fournir votre nom et adresse email puis votre message</h2>
            <p style="color: red">* Champs obligatoires</p>

            <label for="name">Nom: <label style="color: red">* 
            <?php 
                if (($_SERVER['REQUEST_METHOD'] == 'POST')) {
                    if (empty($_POST["name"])) {
                        echo "Le nom est obligatoire";
                    }
                }
            ?></label></label><br>
            <input type="text" name="name" id="name" placeholder="Votre nom & prénom"><br><br>

            <label for="email">Email: <label style="color: red">* 
            <?php
                if (($_SERVER['REQUEST_METHOD'] == 'POST')) {
                    if (empty($_POST["email"])) {
                        echo "Adresse mail obligatoire";
                    }
                }
            ?></label></label><br>
            <input type="text" name="email" id="email" placeholder="personne@exemple.xy"><br><br>

            <label for="phone">Téléphone: </label><br>
            <input type="number" name="phone" id="phone" placeholder="(+216)"><br><br>

            <label for="message">Votre message: <label style="color: red">* 
            <?php 
                if (($_SERVER['REQUEST_METHOD'] == 'POST')) {
                    if (empty($_POST["message"])) {
                        echo "Message obligatoire";
                    }
                }
            ?></label></label><br>
            <textarea name="message" id="message" cols="30" rows="10" placeholder="Votre message"></textarea><br><br>

            <button type="submit">Envoyer</button>
            <input type="reset" value="Annuler">
        </fieldset>
    </form>
    
    <?php
        if (!empty($_POST["name"]) && !empty($_POST["email"]) && !empty($_POST["message"])) {
            session_start();
            $_SESSION["name"] = $_POST["name"];
            $_SESSION["email"] = $_POST["email"];
            if (!empty($_POST["phone"])) {
                $_SESSION["phone"] = $_POST["phone"];
            }
            $_SESSION["message"] = $_POST["message"];
            header("location: envoi.php");
            exit();
        }
    ?>
</body>
</html>