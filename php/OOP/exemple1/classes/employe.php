<?php
    class Employe{

        //propriété
        private $nom;
        private $prenom;
        private $salaire;

        // méthode
        public function __construct($numEmp,$pdo){
            $sql = "SELECT * FROM employes WHERE EMPNO=" . $numEmp;
            $result = $pdo->query($sql);
            if ($tab = $result->fetch()){
                $this->nom = $tab['EMPNOM'];
                $this->prenom = $tab['EMPPREN'];
                $this->salaire = $tab['EMPSALAIRE'];
            };
        }

        public function getNom(){
            return $this->nom;
        }
        
        public function setNom($nom){
            $this->nom = $nom;
        }

        public function presenteToi(){
            return "Je m'appelle ".$this->prenom." ".$this->nom." et mon salaire est de ".$this->salaire." Euros";          
        }
        
    }
?>
