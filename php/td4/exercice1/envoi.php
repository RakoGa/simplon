<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Votre message a été envoyé avec succès</h1>
    <?php session_start(); ?>
    <table>
        <tr>
            <th>Nom</th>
            <th>Email</th>
            <?php
                if (isset($_SESSION["phone"])) {
                    echo "<th>Téléphone</th>";
                }
            ?>
            <th>Message</th>
        </tr>
        <tr>
            <td><?php echo $_SESSION["name"]; unset($_SESSION["name"]);?></td>
            <td><?php echo $_SESSION["email"]; unset($_SESSION["email"])?></td>
            <?php
                if (isset($_SESSION["phone"])) {
                    echo "<td>" . $_SESSION["phone"] . "</td>";
                    unset($_SESSION["phone"]);
                }
            ?>
            <td><?php echo $_SESSION["message"]; unset($_SESSION["message"]);?></td>
        </tr>
    </table>
</body>
</html>