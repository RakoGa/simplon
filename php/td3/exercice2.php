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
            <legend>Calcul TVA</legend>

            <label for="prixHT">Prix HT: </label>
            <input type="text" name="prixHT" id="prixHT" required>
            <br>

            <label for="tva">Taux de TVA (en %): </label>
            <input type="text" name="tva" id="tva" required>
            <br>
        </fieldset>
        <button type="submit">Envoyer</button>
    </form>

    <?php
        if (isset($_POST["prixHT"], $_POST["tva"])) {
            $montantTVA = (float)$_POST["prixHT"] * ((float)$_POST["tva"] / 100);
            $prixTTC = (float)$_POST["prixHT"] + $montantTVA;

            // echo "Montant TVA: " . $montantTVA . "€<br>";
            // echo "Prix TTC: " . $prixTTC . "€<br>";    

            echo '<script>alert("Montant TVA: ' . $montantTVA . '€\nPrix TTC: ' . $prixTTC . '€")</script>';
        }
    ?>
</body>
</html>