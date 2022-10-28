<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER somme" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" totalAffichages="1000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="FONCTION factorielle (fact)" code="201#factorielle #fact">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction"/>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="totalfact PREND_LA_VALEUR 1" code="5#totalfact#1#pasliste"/>
            <item algoitem="POUR ifact ALLANT_DE 1 A fact" code="12#ifact#1#fact">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="totalfact PREND_LA_VALEUR totalfact*ifact" code="5#totalfact#totalfact*ifact#pasliste"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="RENVOYER totalfact" code="205#totalfact"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
        <item algoitem="FONCTION puissance (puisp,puisd)" code="201#puissance #puisp,puisd">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction"/>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="totalpuis PREND_LA_VALEUR 1" code="5#totalpuis#1#pasliste"/>
            <item algoitem="POUR ipuis ALLANT_DE 1 A puisd" code="12#ipuis#1#puisd">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="totalpuis PREND_LA_VALEUR totalpuis*puisp" code="5#totalpuis#totalpuis*puisp#pasliste"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="RENVOYER totalpuis" code="205#totalpuis"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="fact EST_DU_TYPE NOMBRE" code="1#NOMBRE#fact"/>
        <item algoitem="totalfact EST_DU_TYPE NOMBRE" code="1#NOMBRE#totalfact"/>
        <item algoitem="ifact EST_DU_TYPE NOMBRE" code="1#NOMBRE#ifact"/>
        <item algoitem="puisp EST_DU_TYPE NOMBRE" code="1#NOMBRE#puisp"/>
        <item algoitem="puisd EST_DU_TYPE NOMBRE" code="1#NOMBRE#puisd"/>
        <item algoitem="ipuis EST_DU_TYPE NOMBRE" code="1#NOMBRE#ipuis"/>
        <item algoitem="totalpuis EST_DU_TYPE NOMBRE" code="1#NOMBRE#totalpuis"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="x EST_DU_TYPE NOMBRE" code="1#NOMBRE#x"/>
        <item algoitem="somme EST_DU_TYPE NOMBRE" code="1#NOMBRE#somme"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="LIRE x" code="2#x#pasliste"/>
        <item algoitem="somme PREND_LA_VALEUR 0" code="5#somme#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n" code="12#i#0#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="somme PREND_LA_VALEUR somme+puissance(x,i)/factorielle(i)" code="5#somme#somme+puissance(x,i)/factorielle(i)#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER somme" code="3#somme#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
