<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; est le mot après permutation.&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#Mot" algoitem="Mot EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#Motpermut" algoitem="Motpermut EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#Mot#pasliste" algoitem="LIRE Mot"/>
        <item code="12#i#0#Mot.length" algoitem="POUR i ALLANT_DE 0 A Mot.length">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#Motpermut#Motpermut+Mot.substr(Mot.length-i,1)#pasliste" algoitem="Motpermut PREND_LA_VALEUR Motpermut+Mot.substr(Mot.length-i,1)"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="3#Mot#0#pasliste" algoitem="AFFICHER Mot"/>
        <item code="4# est le mot avant permutation.#1" algoitem="AFFICHER &quot; est le mot avant permutation.&quot;"/>
        <item code="4#Permutation.#1" algoitem="AFFICHER &quot;Permutation.&quot;"/>
        <item code="3#Motpermut#0#pasliste" algoitem="AFFICHER Motpermut"/>
        <item code="4# est le mot après permutation.#0" algoitem="AFFICHER &quot; est le mot après permutation.&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
