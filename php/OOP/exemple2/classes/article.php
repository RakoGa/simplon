<?php
    class Article {
        // private $reference;
        private $designation;
        private $prixHT;
        private $tauxTVA;

        public function __construct($ref, $pdo) {
            $sql = "SELECT * FROM article WHERE reference = " . $ref;
            $result = $pdo->query($sql);
            if ($tab = $result->fetch()) {
                $this->designation = $tab['designation'];
                $this->prixHT = $tab['prixHT'];
                $this->tauxTVA = $tab['tauxTVA'];
            }
        }

        // getters/setters
        public function getDesignation() {
            return $this->designation;
        }

        public function setDesignation($designation) {
            $this->deignation = $designation;
        }

        public function getPrixHT() {
            return $this->prixHT;
        }

        public function setPrixHT($prixHT) {
            $this->prixHT = $prixHT;
        }

        public function getTauxTVA() {
            return $this->tauxTVA;
        }

        public function setTauxTVA($tauxTVA) {
            $this->tauxTVA = $tauxTVA;
        }

        // methods
        public function calculerPrixTTC() {
            return $this->prixHT + ($this->prixHT * $this->tauxTVA / 100);
        }

        public function affiche() {
            return $this->designation . ", prix HT: " . $this->prixHT . ", prix TTC: " . $this->calculerPrixTTC() . " (TVA à " . $this->tauxTVA . "%)";
        }

    }
?>