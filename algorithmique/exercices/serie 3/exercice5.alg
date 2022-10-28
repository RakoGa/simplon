<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_POUR"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="words EST_DU_TYPE CHAINE" code="1#CHAINE#words"/>
        <item algoitem="wordsLengths EST_DU_TYPE LISTE" code="1#LISTE#wordsLengths"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="inputWord EST_DU_TYPE CHAINE" code="1#CHAINE#inputWord"/>
        <item algoitem="inputChar EST_DU_TYPE CHAINE" code="1#CHAINE#inputChar"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="pos EST_DU_TYPE NOMBRE" code="1#NOMBRE#pos"/>
        <item algoitem="correctWord EST_DU_TYPE CHAINE" code="1#CHAINE#correctWord"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Combien de mots? &quot;" code="4#Combien de mots? #0"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="words PREND_LA_VALEUR &quot;&quot;" code="5#words#&quot;&quot;#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE inputWord" code="2#inputWord#pasliste"/>
            <item algoitem="words PREND_LA_VALEUR words+inputWord" code="5#words#words+inputWord#pasliste"/>
            <item algoitem="wordsLengths[i] PREND_LA_VALEUR inputWord.length" code="5#wordsLengths#inputWord.length#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Quelle lettre? &quot;" code="4#Quelle lettre? #0"/>
        <item algoitem="LIRE inputChar" code="2#inputChar#pasliste"/>
        <item algoitem="pos PREND_LA_VALEUR 0" code="5#pos#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (words.substr(pos ,1) == inputChar) ALORS" code="6#words.substr(pos ,1) == inputChar">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="correctWord PREND_LA_VALEUR words.substr(pos, wordsLengths[i])" code="5#correctWord#words.substr(pos, wordsLengths[i])#pasliste"/>
                <item algoitem="AFFICHER correctWord" code="3#correctWord#1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="pos PREND_LA_VALEUR pos + wordsLengths[i]" code="5#pos#pos + wordsLengths[i]#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
