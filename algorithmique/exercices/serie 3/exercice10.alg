<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER res"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="str1 EST_DU_TYPE CHAINE" code="1#CHAINE#str1"/>
        <item algoitem="str2 EST_DU_TYPE CHAINE" code="1#CHAINE#str2"/>
        <item algoitem="res EST_DU_TYPE CHAINE" code="1#CHAINE#res"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE str1" code="2#str1#pasliste"/>
        <item algoitem="LIRE str2" code="2#str2#pasliste"/>
        <item algoitem="res PREND_LA_VALEUR &quot;&quot;" code="5#res#&quot;&quot;#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A str1.length-1" code="12#i#0#str1.length-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (str1.substr(i,1) != str2.substr(i,1)) ALORS" code="6#str1.substr(i,1) != str2.substr(i,1)">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="res PREND_LA_VALEUR res + &quot;.&quot;" code="5#res#res + &quot;.&quot;#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="res PREND_LA_VALEUR res + str1.substr(i,1)" code="5#res#res + str1.substr(i,1)#pasliste"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER res" code="3#res#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
