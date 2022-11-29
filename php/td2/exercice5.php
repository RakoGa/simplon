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
        $friends = [
            [
                "lastName" => "lN1",
                "firstName" => "fN1",
                "age" => "21",
                "city" => "c1"
            ],
            [
                "lastName" => "lN2",
                "firstName" => "fN2",
                "age" => "22",
                "city" => "c2"
            ],
            [
                "lastName" => "lN3",
                "firstName" => "fN3",
                "age" => "23",
                "city" => "c3"
            ],
            [
                "lastName" => "lN4",
                "firstName" => "fN4",
                "age" => "24",
                "city" => "c4"
            ],
            [
                "lastName" => "lN5",
                "firstName" => "fN5",
                "age" => "25",
                "city" => "c5"
            ]
        ];

        foreach ($friends as $friend) {
            echo "<ul>";
            foreach ($friend as $infoName => $infoVal) {
                echo "<li>" . $infoName . ": " . $infoVal . "</li>";
            }
            echo "</ul>";
            echo "<hr>";
        }
    ?>
</body>
</html>