<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Détails de votre comande</h1>
    <table>
        <tr>
            <th>Magasin</th>
            <th>Produit</th>
            <th>Quantité</th>
        </tr>
        <tr>
            <td><?php echo $_POST["store"]; ?></td>
            <td><?php echo $_POST["product"]; ?></td>
            <td><?php echo $_POST["quantity"]; ?></td>
        </tr>
    </table>
</body>
</html>