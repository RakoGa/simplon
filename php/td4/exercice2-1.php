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

        echo "<table style=\"border-collapse: collapse\">";
        $tdI = 0;
        $tdJ = 0;
        for ($i = 0; $i < 4; $i++) {
            echo "<tr>";
            for ($j = 0; $j < 3; $j++) {
                $tdJ = $tdI + $tdI + 1;
                echo "<td style=\"border: 1px solid black\">" . $tdJ . "</td>";
                echo "<td style=\"border: 1px solid black; background-color: " . $colors[$tdJ] . "\">" . $months[$tdJ] . "</td>";
            }
            echo "</tr>";
            $tdI += 3;
        }
        echo "</table>";
        // buh
    ?>
</body>
</html>