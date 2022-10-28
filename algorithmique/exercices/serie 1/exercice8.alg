<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER coutTotal"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="distance EST_DU_TYPE NOMBRE" code="1#NOMBRE#distance"/>
        <item algoitem="duree EST_DU_TYPE NOMBRE" code="1#NOMBRE#duree"/>
        <item algoitem="coutLocation EST_DU_TYPE NOMBRE" code="1#NOMBRE#coutLocation"/>
        <item algoitem="qttEssence EST_DU_TYPE NOMBRE" code="1#NOMBRE#qttEssence"/>
        <item algoitem="coutEssence EST_DU_TYPE NOMBRE" code="1#NOMBRE#coutEssence"/>
        <item algoitem="coutQuot EST_DU_TYPE NOMBRE" code="1#NOMBRE#coutQuot"/>
        <item algoitem="coutKilo EST_DU_TYPE NOMBRE" code="1#NOMBRE#coutKilo"/>
        <item algoitem="coutTotal EST_DU_TYPE NOMBRE" code="1#NOMBRE#coutTotal"/>
        <item algoitem="a EST_DU_TYPE LISTE" code="1#LISTE#a"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE distance" code="2#distance#pasliste"/>
        <item algoitem="LIRE duree" code="2#duree#pasliste"/>
        <item algoitem="coutLocation PREND_LA_VALEUR 40" code="5#coutLocation#40#pasliste"/>
        <item algoitem="qttEssence PREND_LA_VALEUR distance/160" code="5#qttEssence#distance/160#pasliste"/>
        <item algoitem="coutEssence PREND_LA_VALEUR qttEssence*10*1.8" code="5#coutEssence#qttEssence*10*1.8#pasliste"/>
        <item algoitem="coutQuot PREND_LA_VALEUR coutLocation*duree" code="5#coutQuot#coutLocation*duree#pasliste"/>
        <item algoitem="coutKilo PREND_LA_VALEUR distance*0.05" code="5#coutKilo#distance*0.05#pasliste"/>
        <item algoitem="coutTotal PREND_LA_VALEUR coutQuot + coutKilo + coutEssence" code="5#coutTotal#coutQuot + coutKilo + coutEssence#pasliste"/>
        <item algoitem="AFFICHER coutTotal" code="3#coutTotal#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
