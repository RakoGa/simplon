<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body style="font-family: Trebuchet MS">
    <?php
        $friends = [
            "f1" => "pink",
            "f2" => "lavender",
            "f3" => "lightskyblue",
            "f4" => "midnightblue",
            "f5" => "salmon",
            "f6" => "orchid",
            "f7" => "lightpink",
            "f8" => "plum"
        ];

        echo "<table style=\"border-collapse: collapse\">";
        foreach ($friends as $friend => $color) {
            echo "<tr>";
            echo "<td class=\"fName\">" . $friend . "</td>";
            echo "<td class=\"fColor\">" . $color . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    ?>

    <script>
        let friendNames = document.getElementsByClassName("fName");
        let friendColors = document.getElementsByClassName("fColor");
        
        for (let i = 0; i < friendNames.length; i++) {
            friendNames[i].setAttribute("style", "border: 1px solid black; border-collapse: collapse; color: " + friendColors[i].innerHTML);
            friendColors[i].setAttribute("style", "border: 1px solid black; border-collapse: collapse;color: white; background-color: " + friendColors[i].innerHTML);
        }
    </script>
</body>
</html>