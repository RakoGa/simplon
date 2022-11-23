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
        echo "<table>";
        for ($i = 0; $i <= 10; $i++) {
            echo "<tr>";
            for ($j = 0; $j <= 10; $j++) {
                echo "<td>";
                if ($i == 0 && $j == 0) {
                    echo "<p style=\"font-weight: bold\">X</p>";
                } elseif ($i == 0 && $j != 0) {
                    echo "<p style=\"font-weight: bold\">{$j}</p>";
                } elseif ($i != 0 && $j == 0) {
                    echo "<p style=\"font-weight: bold\">{$i}</p>";
                } else {
                    $res = $i * $j;                    
                    echo "<p>{$res}</p>";
                }
                echo "</td>";
            }
            echo "</tr>";
        }
        echo "</table>";
    ?>
</body>
</html>