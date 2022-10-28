<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;consonnes.&quot;" texte="ALGOBOX NE PREND PAS LES CHAINES DE CARACTERE DANS LES TABLEAU, FAIRE SUR PAPIER."/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#Mot" algoitem="Mot EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#comptvoy" algoitem="comptvoy EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#comptcons" algoitem="comptcons EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#Mot#pasliste" algoitem="LIRE Mot"/>
        <item code="5#comptvoy#0#pasliste" algoitem="comptvoy PREND_LA_VALEUR 0"/>
        <item code="5#comptcons#0#pasliste" algoitem="comptcons PREND_LA_VALEUR 0"/>
        <item code="12#i#0#Mot.length" algoitem="POUR i ALLANT_DE 0 A Mot.length">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#Mot.substr(i,1) == &quot;a&quot; OU Mot.substr(i,1) == &quot;e&quot; OU Mot.substr(i,1) == &quot;i&quot; OU Mot.substr(i,1) == &quot;o&quot; OU Mot.substr(i,1) == &quot;u&quot; OU Mot.substr(i,1) == &quot;y&quot;" algoitem="SI (Mot.substr(i,1) == &quot;a&quot; OU Mot.substr(i,1) == &quot;e&quot; OU Mot.substr(i,1) == &quot;i&quot; OU Mot.substr(i,1) == &quot;o&quot; OU Mot.substr(i,1) == &quot;u&quot; OU Mot.substr(i,1) == &quot;y&quot;) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#comptvoy#comptvoy+1#pasliste" algoitem="comptvoy PREND_LA_VALEUR comptvoy+1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="5#comptcons#comptcons+1#pasliste" algoitem="comptcons PREND_LA_VALEUR comptcons+1"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le mot #0" algoitem="AFFICHER &quot;Le mot &quot;"/>
        <item code="3#Mot#0#pasliste" algoitem="AFFICHER Mot"/>
        <item code="4# compte #0" algoitem="AFFICHER &quot; compte &quot;"/>
        <item code="3#comptvoy#0#pasliste" algoitem="AFFICHER comptvoy"/>
        <item code="4# voyelles et #0" algoitem="AFFICHER &quot; voyelles et &quot;"/>
        <item code="3#comptcons#0#pasliste" algoitem="AFFICHER comptcons"/>
        <item code="4#consonnes.#0" algoitem="AFFICHER &quot;consonnes.&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
