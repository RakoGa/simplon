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
        try {
            $bdd = new PDO('mysql:host=localhost;dbname=societe;charset=utf8', 'root', '');
        } catch (Exception $e) {
            die('Erreur: ' . $e->getMessage());
        }
        
        $reponse = $bdd->query('SELECT * FROM projets;');

        while ($donnees = $reponse->fetch()) {
            echo $donnees["PROJNO"] . ', ' . $donnees["PROJLIB"] . ', ' . $donnees["SRVNO"] . '<br>';
        }
        echo '<hr>';

        $nAdd = $bdd->exec('INSERT INTO projets (PROJNO, PROJLIB, SRVNO) VALUES (4, \'IMMEUBLE\', 5), (5, \'PARC\', 6)');
        echo $nAdd . ' entrées ajoutées';
        echo '<hr>';

        $reponse = $bdd->query('SELECT * FROM projets;');

        while ($donnees = $reponse->fetch()) {
            echo $donnees["PROJNO"] . ', ' . $donnees["PROJLIB"] . ', ' . $donnees["SRVNO"] . '<br>';
        }
        echo '<hr>';

        $nUpd = $bdd->exec('UPDATE projets SET PROJLIB = \'BUREAUX\' WHERE PROJNO = 4;');
        echo $nUpd . ' entrée modifiée<br>';
        $nUpd = $bdd->exec('UPDATE projets SET PROJLIB = \'JARDINS\' WHERE PROJNO = 5;');
        echo $nUpd . ' entrée modifiée';
        echo '<hr>';

        $reponse = $bdd->query('SELECT * FROM projets;');

        while ($donnees = $reponse->fetch()) {
            echo $donnees["PROJNO"] . ', ' . $donnees["PROJLIB"] . ', ' . $donnees["SRVNO"] . '<br>';
        }
        echo '<hr>';

        $nDel = $bdd->exec('DELETE FROM projets WHERE PROJNO IN (4, 5)');
        echo $nDel . ' entrées supprimées';
        echo '<hr>';

        $reponse = $bdd->query('SELECT * FROM projets;');

        while ($donnees = $reponse->fetch()) {
            echo $donnees["PROJNO"] . ', ' . $donnees["PROJLIB"] . ', ' . $donnees["SRVNO"] . '<br>';
        }

    ?>
</body>
</html>