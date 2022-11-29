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
        $t = [];

        for ($i = 0; $i < 20; $i+=2) {
            $t[$i] = $t[$i+1] = random_int(10,99);
        }

        echo "Etat initial: <br>";
        foreach ($t as $number) {
            echo $number . ' | ';
        }

        for ($i = 0; $i < count($t) / 2; $i++) {
            $splicedValue = array_splice($t, $i, 1);
            array_splice($t, count($t)-$i, 0, $splicedValue[0]);
        }

        echo "<br>Etat final: <br>";
        foreach ($t as $number) {
            echo $number . ' | ';
        }
    ?>
</body>
</html>