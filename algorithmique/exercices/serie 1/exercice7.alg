<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER salaireNet"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbHeures EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbHeures"/>
        <item algoitem="tauxHoraire EST_DU_TYPE NOMBRE" code="1#NOMBRE#tauxHoraire"/>
        <item algoitem="tauxSup EST_DU_TYPE NOMBRE" code="1#NOMBRE#tauxSup"/>
        <item algoitem="retenues EST_DU_TYPE NOMBRE" code="1#NOMBRE#retenues"/>
        <item algoitem="salaireBrut EST_DU_TYPE NOMBRE" code="1#NOMBRE#salaireBrut"/>
        <item algoitem="salaireNet EST_DU_TYPE NOMBRE" code="1#NOMBRE#salaireNet"/>
        <item algoitem="heuresSup EST_DU_TYPE NOMBRE" code="1#NOMBRE#heuresSup"/>
        <item algoitem="heuresContrat EST_DU_TYPE NOMBRE" code="1#NOMBRE#heuresContrat"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE nbHeures" code="2#nbHeures#pasliste"/>
        <item algoitem="heuresContrat PREND_LA_VALEUR 35" code="5#heuresContrat#35#pasliste"/>
        <item algoitem="tauxHoraire PREND_LA_VALEUR 14" code="5#tauxHoraire#14#pasliste"/>
        <item algoitem="tauxSup PREND_LA_VALEUR 1.5" code="5#tauxSup#1.5#pasliste"/>
        <item algoitem="retenues PREND_LA_VALEUR 12" code="5#retenues#12#pasliste"/>
        <item algoitem="heuresSup PREND_LA_VALEUR nbHeures - heuresContrat" code="5#heuresSup#nbHeures - heuresContrat#pasliste"/>
        <item algoitem="salaireBrut PREND_LA_VALEUR heuresContrat * tauxHoraire + heuresSup * tauxSup * tauxHoraire" code="5#salaireBrut#heuresContrat * tauxHoraire + heuresSup * tauxSup * tauxHoraire#pasliste"/>
        <item algoitem="salaireNet PREND_LA_VALEUR salaireBrut - (salaireBrut * (retenues/100))" code="5#salaireNet#salaireBrut - (salaireBrut * (retenues/100))#pasliste"/>
        <item algoitem="AFFICHER salaireNet" code="3#salaireNet#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
