<?php 
    include "classes/article.php";
    try
      {
        // Connexion à la base de données
        $bdd = new PDO('mysql:host=localhost;dbname=magasin;charset=utf8' , 'root' , '');
      } catch (Exception $e)
      {
        die('Erreur de connexion.' . $e->getMessage());
      }

?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Exemple 2 POO en PHP</title>
	</head>
	<body>

        <h1><?php echo "Exemple d'articles"; ?></h1>

        <?php 
            $art1 = new Article(1, $bdd);
            $art2 = new Article(2, $bdd);
            $art3 = new Article(3, $bdd);
            $art4 = new Article(4, $bdd);
            $art5 = new Article(5, $bdd);
        ?>

        <p> Article 1 :
            <?php echo $art1->affiche();?>
        </p>  
        <p> Article 2 :
            <?php echo $art2->affiche();?>
        </p>  
        <p> Article 3 :
            <?php echo $art3->affiche();?>
        </p>  
        <p> Article 4 :
            <?php echo $art4->affiche();?>
        </p>  
        <p> Article 5 :
            <?php echo $art5->affiche();?>
        </p>  
           
    </body>
</html>
