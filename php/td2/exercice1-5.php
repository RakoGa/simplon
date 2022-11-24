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
            $i = 0;

            while ($i < 50) {
                $t[$i] = random_int(10, 99);
                $i++;
            }

            return $t;
        }

        function getMin($t) {
            $min = $t[0];
            $i = 1;

            while ($i < sizeof($t)) {
                if ($t[$i] < $min) {
                    $min = $t[$i];
                }
                $i++;
            }

            return $min;
        }

        function getMax($t) {
            $max = $t[0];
            $i = 1;

            while ($i < sizeof($t)) {
                if ($t[$i] > $max) {
                    $max = $t[$i];
                }
                $i++;
            }

            return $max;
        }

        function display($t) {
            $min = getMin($t);
            $max = getMax($t);

            echo "min: " . $min . ", max: " . $max;
        }

        $t = generateTable();
        display($t);
    ?>
</body>
</html>