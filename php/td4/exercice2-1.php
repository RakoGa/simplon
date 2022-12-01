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
        $months = ["Janvier", "Février", "Mars", "Avril", "May", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre"];
        $colors = ["blue", "white", "red", "yellow", "grey", "lime", "lightblue", "fuchsia", "lightgrey", "olive", "pink", "purple"];

        echo "<table>";
        for ($i = 0; $i < count($months) / 3; $i++) {
            echo "<tr>";
            for ($j = 0; $j < count($months) / 2; $j++) {
                
            }
            echo "</tr>";
        }
        echo "</table>";
    ?>
</body>
</html>