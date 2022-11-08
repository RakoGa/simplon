const TVA = 1.186;
let prix = prompt("Entrez un prix");

prix *= TVA;
document.write("Prix TTC (TVA à 18.6%): " + prix);