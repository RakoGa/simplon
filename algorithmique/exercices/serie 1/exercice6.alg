<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot; secondes&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="input EST_DU_TYPE NOMBRE" code="1#NOMBRE#input"/>
        <item algoitem="secondes EST_DU_TYPE NOMBRE" code="1#NOMBRE#secondes"/>
        <item algoitem="minutes EST_DU_TYPE NOMBRE" code="1#NOMBRE#minutes"/>
        <item algoitem="heures EST_DU_TYPE NOMBRE" code="1#NOMBRE#heures"/>
        <item algoitem="reste EST_DU_TYPE NOMBRE" code="1#NOMBRE#reste"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE input" code="2#input#pasliste"/>
        <item algoitem="heures PREND_LA_VALEUR floor(input/3600)" code="5#heures#floor(input/3600)#pasliste"/>
        <item algoitem="reste PREND_LA_VALEUR input%3600" code="5#reste#input%3600#pasliste"/>
        <item algoitem="minutes PREND_LA_VALEUR floor(reste/60)" code="5#minutes#floor(reste/60)#pasliste"/>
        <item algoitem="secondes PREND_LA_VALEUR reste%60" code="5#secondes#reste%60#pasliste"/>
        <item algoitem="AFFICHER heures" code="3#heures#0#pasliste"/>
        <item algoitem="AFFICHER &quot; heures, &quot;" code="4# heures, #0"/>
        <item algoitem="AFFICHER minutes" code="3#minutes#0#pasliste"/>
        <item algoitem="AFFICHER &quot; minutes et &quot;" code="4# minutes et #0"/>
        <item algoitem="AFFICHER secondes" code="3#secondes#0#pasliste"/>
        <item algoitem="AFFICHER &quot; secondes&quot;" code="4# secondes#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
