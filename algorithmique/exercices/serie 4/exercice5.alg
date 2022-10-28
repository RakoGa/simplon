<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="APPELER_FONCTION sum(n,x)" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" epaisseurLigne="2" maxBoucle="500000" arrondiAuto="vrai" nbDecimales="8" totalBoucles="5000000" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="FONCTION fact(n)" code="201#fact#n">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction"/>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="res PREND_LA_VALEUR 1" code="5#res#1#pasliste"/>
            <item algoitem="POUR i ALLANT_DE 1 A n" code="12#i#1#n">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="res PREND_LA_VALEUR res * i" code="5#res#res * i#pasliste"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="AFFICHER res" code="3#res#1#pasliste"/>
            <item algoitem="RENVOYER res" code="205#res"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
        <item algoitem="FONCTION pow(x,n)" code="201#pow#x,n">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction"/>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="res PREND_LA_VALEUR x" code="5#res#x#pasliste"/>
            <item algoitem="POUR i ALLANT_DE 1 A n" code="12#i#1#n">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="res PREND_LA_VALEUR res * res" code="5#res#res * res#pasliste"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="AFFICHER res" code="3#res#1#pasliste"/>
            <item algoitem="RENVOYER res" code="205#res"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
        <item algoitem="FONCTION sum (n,x)" code="201#sum #n,x">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction"/>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="res PREND_LA_VALEUR 0" code="5#res#0#pasliste"/>
            <item algoitem="POUR i ALLANT_DE 0 A n" code="12#i#0#n">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="res PREND_LA_VALEUR res + pow(x,i)/fact(i)" code="5#res#res + pow(x,i)/fact(i)#pasliste"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="AFFICHER res" code="3#res#0#pasliste"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="x EST_DU_TYPE NOMBRE" code="1#NOMBRE#x"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="res EST_DU_TYPE NOMBRE" code="1#NOMBRE#res"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="LIRE x" code="2#x#pasliste"/>
        <item algoitem="APPELER_FONCTION sum(n,x)" code="206#sum(n,x)"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
