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

        function generateTable() {
            $t = [];

            for ($i = 0; $i < 50; $i++) {
                $t[$i] = random_int(10, 99);
            }

            return $t;
        }

        function minMax($t) {
            $min = $t[0];
            $max = $t[0];

            foreach ($t as $number) {
                if ($number < $min) {
                    $min = $number;
                } elseif ($number > $max) {
                    $max = $number;
                }
            }

            return [$min, $max];
        }

        function display($t) {
            $minMax = minMax($t);

            echo "min: " . $minMax[0] . ", max: " . $minMax[1];
        }

        $t = generateTable();
        display($t);
    ?>
</body>
</html>