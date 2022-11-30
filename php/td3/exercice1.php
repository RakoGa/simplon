<?php
    echo "<table>";
        echo "<tr>";
            echo "<td>Nom: </td>";
            echo "<td>" . $_POST["lName"] . "</td>";
        echo "</tr>";
        echo "<tr>";
            echo "<td>Prénom: </td>";
            echo "<td>" . $_POST["fName"] . "</td>";
        echo "</tr>";
        echo "<tr>";
            echo "<td>Adresse: </td>";
            echo "<td>" . $_POST["address"] . "</td>";
        echo "</tr>";
        echo "<tr>";
            echo "<td>Ville: </td>";
            echo "<td>" . $_POST["city"] . "</td>";
        echo "</tr>";
        echo "<tr>";
            echo "<td>Code postal: </td>";
            echo "<td>" . $_POST["zipcode"] . "</td>";
        echo "</tr>";
    echo "</table>";
?>