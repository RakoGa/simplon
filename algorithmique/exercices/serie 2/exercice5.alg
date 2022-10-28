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
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#y" algoitem="y EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#op" algoitem="op EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez un premier nombre#0" algoitem="AFFICHER &quot;Entrez un premier nombre&quot;"/>
        <item code="2#x#pasliste" algoitem="LIRE x"/>
        <item code="4#Entrez un second nombre#0" algoitem="AFFICHER &quot;Entrez un second nombre&quot;"/>
        <item code="2#y#pasliste" algoitem="LIRE y"/>
        <item code="4#Choisissez: +, -, * ou /#0" algoitem="AFFICHER &quot;Choisissez: +, -, * ou /&quot;"/>
        <item code="2#op#pasliste" algoitem="LIRE op"/>
        <item code="6#op == &quot;+&quot;" algoitem="SI (op == &quot;+&quot;) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="19#&#x9;&#x9;AFFICHER x + y" algoitem="//&#x9;&#x9;AFFICHER x + y"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#op == &quot;-&quot;" algoitem="SI (op == &quot;-&quot;) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="19#&#x9;&#x9;AFFICHER x - y" algoitem="//&#x9;&#x9;AFFICHER x - y"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#op == &quot;*&quot;" algoitem="SI (op == &quot;*&quot;) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="19#&#x9;&#x9;AFFICHER x * y" algoitem="//&#x9;&#x9;AFFICHER x * y"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#op == &quot;/&quot;" algoitem="SI (op == &quot;/&quot;) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="19#&#x9;&#x9;AFFICHER x / y" algoitem="//&#x9;&#x9;AFFICHER x / y"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
