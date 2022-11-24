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

        for ($i = 0; $i < 50; $i++) {
            $t[$i] = random_int(10, 99);
        } 

        echo "min: " . min($t) . ", max: " . max($t);
    ?>
</body>
</html>