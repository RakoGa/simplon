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
        <item code="1#NOMBRE#nbEnfants" algoitem="nbEnfants EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#reduc" algoitem="reduc EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#nbEnfants#pasliste" algoitem="LIRE nbEnfants"/>
        <item code="6#nbEnfants == 2" algoitem="SI (nbEnfants == 2) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#10% de réduction#0" algoitem="AFFICHER &quot;10% de réduction&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#nbEnfants == 3" algoitem="SI (nbEnfants == 3) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#15% de réduction#0" algoitem="AFFICHER &quot;15% de réduction&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#nbEnfants == 4" algoitem="SI (nbEnfants == 4) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#18% de réduction#0" algoitem="AFFICHER &quot;18% de réduction&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#nbEnfants > 4" algoitem="SI (nbEnfants > 4) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#reduc#18 + nbEnfants - 4#pasliste" algoitem="reduc PREND_LA_VALEUR 18 + nbEnfants - 4"/>
            <item code="3#reduc#0#pasliste" algoitem="AFFICHER reduc"/>
            <item code="4#% de reduction#0" algoitem="AFFICHER &quot;% de reduction&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
