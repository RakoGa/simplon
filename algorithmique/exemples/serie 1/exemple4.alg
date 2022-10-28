<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHERCALCUL (long+larg) * 2"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000" nbDecimales="8" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="long EST_DU_TYPE NOMBRE" code="1#NOMBRE#long"/>
        <item algoitem="larg EST_DU_TYPE NOMBRE" code="1#NOMBRE#larg"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE long" code="2#long#pasliste"/>
        <item algoitem="LIRE larg" code="2#larg#pasliste"/>
        <item algoitem="AFFICHER &quot;surface: &quot;" code="4#surface: #0"/>
        <item algoitem="AFFICHERCALCUL long*larg" code="20#long*larg#1"/>
        <item algoitem="AFFICHER &quot;périmètre: &quot;" code="4#périmètre: #0"/>
        <item algoitem="AFFICHERCALCUL (long+larg) * 2" code="20#(long+larg) * 2#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
