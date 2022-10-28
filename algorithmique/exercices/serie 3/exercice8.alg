<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="str EST_DU_TYPE CHAINE" code="1#CHAINE#str"/>
        <item algoitem="revStr EST_DU_TYPE CHAINE" code="1#CHAINE#revStr"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE str" code="2#str#pasliste"/>
        <item algoitem="revStr PREND_LA_VALEUR &quot;&quot;" code="5#revStr#&quot;&quot;#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A str.length-1" code="12#i#0#str.length-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="revStr PREND_LA_VALEUR revStr + str.substr(str.length-1-i,1)" code="5#revStr#revStr + str.substr(str.length-1-i,1)#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="SI (str == revStr) ALORS" code="6#str == revStr">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;palindrome&quot;" code="4#palindrome#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;pas palindrome&quot;" code="4#pas palindrome#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
