<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_POUR" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" nbDecimales="8" epaisseurPoint="2" totalAffichages="1000" totalBoucles="5000000" epaisseurLigne="2" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="t EST_DU_TYPE LISTE" code="1#LISTE#t"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="tn EST_DU_TYPE LISTE" code="1#LISTE#tn"/>
        <item algoitem="tp EST_DU_TYPE LISTE" code="1#LISTE#tp"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="itn EST_DU_TYPE NOMBRE" code="1#NOMBRE#itn"/>
        <item algoitem="itp EST_DU_TYPE NOMBRE" code="1#NOMBRE#itp"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="itn PREND_LA_VALEUR 0" code="5#itn#0#pasliste"/>
        <item algoitem="itp PREND_LA_VALEUR 0" code="5#itp#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE t[i]" code="2#t#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Tableau d'origine: &quot;" code="4#Tableau d'origine: #1"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER t[i]" code="3#t#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (t[i] &lt; 0) ALORS" code="6#t[i] &lt; 0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="tn[itn] PREND_LA_VALEUR t[i]" code="5#tn#t[i]#itn"/>
                <item algoitem="itn PREND_LA_VALEUR itn + 1" code="5#itn#itn + 1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (t[i] > 0) ALORS" code="6#t[i] > 0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="tp[itp] PREND_LA_VALEUR t[i]" code="5#tp#t[i]#itp"/>
                <item algoitem="itp PREND_LA_VALEUR itp + 1" code="5#itp#itp + 1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;-------------------&quot;" code="4#-------------------#1"/>
        <item algoitem="AFFICHER &quot;Valeurs négatives: &quot;" code="4#Valeurs négatives: #1"/>
        <item algoitem="POUR i ALLANT_DE 0 A itn-1" code="12#i#0#itn-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tn[i]" code="3#tn#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Valeurs positives: &quot;" code="4#Valeurs positives: #1"/>
        <item algoitem="POUR i ALLANT_DE 0 A itp-1" code="12#i#0#itp-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tp[i]" code="3#tp#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
