<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER avg"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" maxBoucle="500000" epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="t EST_DU_TYPE LISTE" code="1#LISTE#t"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="sum EST_DU_TYPE NOMBRE" code="1#NOMBRE#sum"/>
        <item algoitem="prod EST_DU_TYPE NOMBRE" code="1#NOMBRE#prod"/>
        <item algoitem="avg EST_DU_TYPE NOMBRE" code="1#NOMBRE#avg"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="sum PREND_LA_VALEUR 0" code="5#sum#0#pasliste"/>
        <item algoitem="prod PREND_LA_VALEUR 1" code="5#prod#1#pasliste"/>
        <item algoitem="avg PREND_LA_VALEUR 0" code="5#avg#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE t[i]" code="2#t#i"/>
            <item algoitem="sum PREND_LA_VALEUR sum + t[i]" code="5#sum#sum + t[i]#pasliste"/>
            <item algoitem="prod PREND_LA_VALEUR prod * t[i]" code="5#prod#prod * t[i]#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="avg PREND_LA_VALEUR sum / n" code="5#avg#sum / n#pasliste"/>
        <item algoitem="AFFICHER &quot;Somme: &quot;" code="4#Somme: #0"/>
        <item algoitem="AFFICHER sum" code="3#sum#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Produit: &quot;" code="4#Produit: #0"/>
        <item algoitem="AFFICHER prod" code="3#prod#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Moyenne: &quot;" code="4#Moyenne: #0"/>
        <item algoitem="AFFICHER avg" code="3#avg#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
