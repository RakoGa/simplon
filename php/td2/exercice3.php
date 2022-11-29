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
        include "exercice1-4.php";

        $t = generateTable();
        $evenT = $oddT = [];

        foreach ($t as $number) {
            if ($number % 2 == 0) {
                array_push($evenT, $number);
            } else {
                array_push($oddT, $number);
            }
        }
        
        echo "Nombres pairs: <br>";
        foreach ($evenT as $number) {
            echo $number . '<br>';
        }

        echo "<br>";

        echo "Nombres impairs: <br>";
        foreach ($oddT as $number) {
            echo $number . '<br>';
        }
    ?>
</body>
</html>