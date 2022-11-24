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

        function getMin($t) {
            $min = $t[0];

            foreach ($t as $number) {
                if ($number < $min) {
                    $min = $number;
                } 
            }

            return $min;
        }

        function getMax($t) {
            $max = $t[0];

            foreach ($t as $number) {
                if ($number > $max) {
                    $max = $number;
                }
            }

            return $max;
        }

        function display($t) {
            $min = getMin($t);
            $max = getMax($t);

            echo "Valeurs du tableau: <br>";

            foreach ($t as $number) {
                echo $number . ' | ';
            }

            echo "<br>min: " . $min . ", max: " . $max;
        }

        $t = generateTable();
        display($t);
    ?>
</body>
</html>