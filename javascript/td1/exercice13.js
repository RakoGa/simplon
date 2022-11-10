class Voiture {
    constructor(marque, anneeFab, dateAchat) {
        this.marque = marque;
        this.anneeFab = anneeFab;
        this.dateAchat = dateAchat;
    }
}

let m = prompt("Marque de la voiture ");
let a = parseInt(prompt("Année de fabrication:"));
let dateString = prompt("Date d\'achat (JJ/MM/AAAA)");
let [jour, mois, annee] = dateString.split('/');
let d = new Date(annee, parseInt(mois)-1, parseInt(jour)+1);
let v = new Voiture(m, a, d);

document.write(JSON.stringify(v));