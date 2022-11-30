<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php include "my_arrays.php";?>
    <form action="exercice3-display.php" method="post">
        <fieldset>
            <legend>Passer commande</legend>

            <label for="store">Magasins</label><br>
            <select name="store" id="store">
                <?php
                    foreach ($magasins as $store) {
                        echo "<option value=\"" . $store . "\">" . $store . "</option>";
                    }
                ?>
            </select>
            <br><br>
            
            <label for="product">Liste produits</label><br>
            <select name="product" id="product">
                <?php
                    foreach ($produits as $product) {
                        echo "<option value=\"" . $product . "\">" . $product . "</option>";
                    }
                ?>
            </select>
            <br><br>

            <label for="quantity">Quantité</label><br>
            <input type="number" name="quantity" id="quantity" placeholder="1" min="1">
            <br><br>

            <button type="submit">Envoyer</button>
            <input type="reset" value="Annuler">
        </fieldset>
    </form>
</body>
</html>