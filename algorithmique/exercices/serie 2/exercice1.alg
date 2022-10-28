<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SI" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" totalAffichages="1000" epaisseurLigne="2" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#j1" algoitem="j1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#j2" algoitem="j2 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#j1#ALGOBOX_ALEA_ENT(0,5)#pasliste" algoitem="j1 PREND_LA_VALEUR ALGOBOX_ALEA_ENT(0,5)"/>
        <item code="4#Joueur 1: #0" algoitem="AFFICHER &quot;Joueur 1: &quot;"/>
        <item code="3#j1#1#pasliste" algoitem="AFFICHER j1"/>
        <item code="5#j2#ALGOBOX_ALEA_ENT(0,5)#pasliste" algoitem="j2 PREND_LA_VALEUR ALGOBOX_ALEA_ENT(0,5)"/>
        <item code="4#Joueur 2: #0" algoitem="AFFICHER &quot;Joueur 2: &quot;"/>
        <item code="3#j2#1#pasliste" algoitem="AFFICHER j2"/>
        <item code="5#somme#j1 + j2#pasliste" algoitem="somme PREND_LA_VALEUR j1 + j2"/>
        <item code="4#Somme: #0" algoitem="AFFICHER &quot;Somme: &quot;"/>
        <item code="3#somme#1#pasliste" algoitem="AFFICHER somme"/>
        <item code="6#somme % 2 == 0" algoitem="SI (somme % 2 == 0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Le premier joueur gagne#0" algoitem="AFFICHER &quot;Le premier joueur gagne&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#somme % 2 != 0" algoitem="SI (somme % 2 != 0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Le second joueur gagne#0" algoitem="AFFICHER &quot;Le second joueur gagne&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
