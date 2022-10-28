<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_POUR" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" epaisseurLigne="2" maxBoucle="500000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#sum" algoitem="sum EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#j" algoitem="j EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#n#1#pasliste" algoitem="n PREND_LA_VALEUR 1"/>
        <item code="12#i#1#1000" algoitem="POUR i ALLANT_DE 1 A 1000">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#sum#1#pasliste" algoitem="sum PREND_LA_VALEUR 1"/>
            <item code="12#j#1#i-1" algoitem="POUR j ALLANT_DE 1 A i-1">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="6#i % j == 0" algoitem="SI (i % j == 0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#sum#sum + j#pasliste" algoitem="sum PREND_LA_VALEUR sum + j"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
