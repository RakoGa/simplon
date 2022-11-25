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
        $lettersT = [];
        $statsT = [];

        for ($i = 0; $i < 50; $i++) {
            $lettersT[$i] = chr(random_int(65,90));
        }

        $statsT = array_count_values($lettersT);

        foreach ($statsT as $letter => $stat) {
            echo $letter . ': ' . $stat . ' apparitions <br>';
        }

    ?>
</body>
</html>