<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER maxI" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2para="" F2etat="inactif" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" totalBoucles="5000000" epaisseurPoint="2" arrondiAuto="vrai" epaisseurLigne="2" maxBoucle="500000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="t EST_DU_TYPE LISTE" code="1#LISTE#t"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="min EST_DU_TYPE NOMBRE" code="1#NOMBRE#min"/>
        <item algoitem="minI EST_DU_TYPE NOMBRE" code="1#NOMBRE#minI"/>
        <item algoitem="max EST_DU_TYPE NOMBRE" code="1#NOMBRE#max"/>
        <item algoitem="maxI EST_DU_TYPE NOMBRE" code="1#NOMBRE#maxI"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE t[i]" code="2#t#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="min PREND_LA_VALEUR t[0]" code="5#min#t[0]#pasliste"/>
        <item algoitem="minI PREND_LA_VALEUR 0" code="5#minI#0#pasliste"/>
        <item algoitem="max PREND_LA_VALEUR t[0]" code="5#max#t[0]#pasliste"/>
        <item algoitem="maxI PREND_LA_VALEUR 0" code="5#maxI#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (t[i] &lt; min) ALORS" code="6#t[i] &lt; min">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="min PREND_LA_VALEUR t[i]" code="5#min#t[i]#pasliste"/>
                <item algoitem="minI PREND_LA_VALEUR i" code="5#minI#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (t[i] > max) ALORS" code="6#t[i] > max">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="max PREND_LA_VALEUR t[i]" code="5#max#t[i]#pasliste"/>
                <item algoitem="maxI PREND_LA_VALEUR i" code="5#maxI#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Min: &quot;" code="4#Min: #0"/>
        <item algoitem="AFFICHER min" code="3#min#0#pasliste"/>
        <item algoitem="AFFICHER &quot; à l'indice &quot;" code="4# à l'indice #0"/>
        <item algoitem="AFFICHER minI" code="3#minI#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Max: &quot;" code="4#Max: #0"/>
        <item algoitem="AFFICHER max" code="3#max#0#pasliste"/>
        <item algoitem="AFFICHER &quot; à l'indice &quot;" code="4# à l'indice #0"/>
        <item algoitem="AFFICHER maxI" code="3#maxI#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
