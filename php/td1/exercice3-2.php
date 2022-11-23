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
        echo "<p>Multiples de 3 entre 6 et 100</p>";
        for ($i = 6; $i <= 100; $i++) {
            if ($i % 3 == 0) {
                echo "$i\n";
            }
        }

        echo "<p>Multiples de 5 entre 6 et 100</p>";
        for ($i = 6; $i <= 100; $i++) {
            if ($i % 5 == 0) {
                echo "$i\n";
            }
        }
     ?>
</body>
</html>