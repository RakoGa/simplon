<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER Lalettre" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai" maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#Lachaine" algoitem="Lachaine EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#Lalettre" algoitem="Lalettre EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#compteurlettre" algoitem="compteurlettre EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez votre phrase.#0" algoitem="AFFICHER &quot;Entrez votre phrase.&quot;"/>
        <item code="2#Lachaine#pasliste" algoitem="LIRE Lachaine"/>
        <item code="4#Entrez la lettre recherchée.#0" algoitem="AFFICHER &quot;Entrez la lettre recherchée.&quot;"/>
        <item code="2#Lalettre#pasliste" algoitem="LIRE Lalettre"/>
        <item code="5#compteurlettre#0#pasliste" algoitem="compteurlettre PREND_LA_VALEUR 0"/>
        <item code="12#i#0#Lachaine.length" algoitem="POUR i ALLANT_DE 0 A Lachaine.length">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#Lachaine.substr(i,1)==Lalettre" algoitem="SI (Lachaine.substr(i,1)==Lalettre) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#compteurlettre#compteurlettre +1#pasliste" algoitem="compteurlettre PREND_LA_VALEUR compteurlettre +1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Dans la phrase : #1" algoitem="AFFICHER &quot;Dans la phrase : &quot;"/>
        <item code="3#Lachaine#1#pasliste" algoitem="AFFICHER Lachaine"/>
        <item code="4#Il ya #0" algoitem="AFFICHER &quot;Il ya &quot;"/>
        <item code="3#compteurlettre#0#pasliste" algoitem="AFFICHER compteurlettre"/>
        <item code="4# fois la lettre #0" algoitem="AFFICHER &quot; fois la lettre &quot;"/>
        <item code="3#Lalettre#0#pasliste" algoitem="AFFICHER Lalettre"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
