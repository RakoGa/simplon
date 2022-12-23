<?php 
    include "classes/employe.php";
    try
      {
        // Connexion à la base de données
        $bdd = new PDO('mysql:host=localhost;dbname=societe;charset=utf8' , 'root' , '');
      } catch (Exception $e)
      {
        die('Erreur de connexion.' . $e->getMessage());
      }

?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Exemple POO en PHP</title>
	</head>
	<body>

        <h1><?php echo "Exemple d'employés"; ?></h1>

        <?php 
            $emp1 = new Employe(1, $bdd);
            $emp2 = new Employe(2, $bdd);
        ?>
        <p> Employé 1 :
            <?php echo $emp1->presenteToi();?>
        </p>  
        <p> Employé 2  :
            <?php echo $emp2->presenteToi();?>
        </p> 
           
    </body>
</html>
