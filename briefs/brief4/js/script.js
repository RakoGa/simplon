function exercice1() {
    let outDiv = document.getElementById("output");
    let hello = "HELLO WORLD!";
    const ANNEE = 2022;
    outDiv.innerHTML = "BONJOUR TOUT LE MONDE! <br>" + hello + "<br>" + ANNEE;
}

function exercice2() {
    let outDiv = document.getElementById("output");
    const TVA = 1.186;
    let prix = parseInt(document.getElementById("prix").value);

    if (isNaN(prix)) {
        alert("Veuillez saisir un prix");
    } else {
        prix *= TVA;
        outDiv.innerHTML = "Prix TTC: " + prix;
    }
}

function exercice3() {
    let outDiv = document.getElementById("output");
    let prenom = document.getElementById("prenom").value;
    let classe = document.getElementById("classe").value;

    if (prenom != "" && classe != "") {
        outDiv.innerHTML = "Bonjour " + prenom + ", votre classe est " + classe + ".";
    } else if (prenom == "" && classe != ""){
        alert("Vous n'avez pas entré votre prénom!");
    } else if (prenom != "" && classe == ""){
        alert("Vous n'avez pas entré votre classe!");
    } else {
        alert("Vous n'avez rien saisi!")
    }
}

function exercice4() {
    let outDiv = document.getElementById("output");
    let n1 = parseInt(document.getElementById("n1").value);
    let n2 = parseInt(document.getElementById("n2").value);
    let n3 = parseInt(document.getElementById("n3").value);

    if (isNaN(n1) || isNaN(n2) || isNaN(n3)) {
        alert("Vous n'avez pas rempli toutes les cases");
    } else {
        outDiv.innerHTML = (n1+n2+n3) / 3;
    }
}

function exercice5() {
    let outDiv = document.getElementById("output");
    let jour = document.getElementById("jour").value;

    switch(jour) {
        case "1":
            outDiv.innerHTML = "Jour correspondant: Lundi";
            break;
        case "2":
            outDiv.innerHTML = "Jour correspondant: Mardi";
            break;
        case "3":
            outDiv.innerHTML = "Jour correspondant: Mercredi";
            break;
        case "4":
            outDiv.innerHTML = "Jour correspondant: Jeudi";
            break;
        case "5":
            outDiv.innerHTML = "Jour correspondant: Vendredi";
            break;   
        case "6":
            outDiv.innerHTML = "Jour correspondant: Samedi";
            break;
        case "7":
            outDiv.innerHTML = "Jour correspondant: Dimanche";
            break; 
        default:
            alert("Saisissez un nombre de 1 à 7");    
    }
}

function exercice6() {
    let outDiv = document.getElementById("output");
    let d = new Date();

    outDiv.innerHTML = "Nous sommes le "+d.getDate() + "/" + d.getMonth() + "/" + d.getFullYear() + " et il est " + d.getHours() + ":"+ d.getMinutes();
}

function exercice7() {
    let outDiv = document.getElementById("output");
    let input = parseInt(document.getElementById("secondes").value);
    let hours, minutes, seconds, rem;

    if (isNaN(input)) {
        alert("Veuillez saisir un nombre de secondes");
    } else {
        hours = Math.floor(input / 3600);
        rem = input % 3600;
        minutes = Math.floor(rem / 60);
        seconds = rem % 60;
        outDiv.innerHTML = input + " secondes = " + hours + " heures " + minutes + " minutes et " + seconds + " secondes.";
    }
}

function exercice8() {
    let outDiv = document.getElementById("output");
    let age = parseInt(document.getElementById("age").value);

    switch(true) {
        case (age <= 0):
            alert("Le nombre doit être supérieur à 0");
            break;
        case (age <= 13):
            outDiv.innerHTML = "Vous êtes encore trop jeune";
            break;
        case (age >= 13 && age <= 18):
            outDiv.innerHTML = "Vous êtes encore mineur(e)";
            break;
        case (age >= 18 && age <= 25):
            outDiv.innerHTML = "Vous êtes déjà majeur(e)";
            break;
        case (age > 25):
            outDiv.innerHTML = "Vous ne vieillissez donc pas!";
            break;
        default:
            alert("Saisissez un nombre");
    }
}

function exercice9() {
    let outDiv = document.getElementById("output");
    let n1 = parseInt(document.getElementById("n1").value);
    let n2 = parseInt(document.getElementById("n2").value);
    let ops = document.getElementsByName("op");
    let oneChecked = false;

    for (let i = 0; i < ops.length; i++) {
        if (ops[i].checked) {
            oneChecked = true;
        }
    }

    if (isNaN(n1) || isNaN(n2)) {
        alert("Vous n'avez pas entré les deux nombres");
    } else if (!oneChecked) {
        alert("Vous n'avez pas coché d'opérateur")
    } else {
        switch(true) {
            case (ops[0].checked):
                outDiv.innerHTML = n1 + " + " + n2 + " = " + (n1+n2);
                break;
            case (ops[1].checked):
                outDiv.innerHTML = n1 + " - " + n2 + " = " + (n1-n2);
                break;
            case (ops[2].checked):
                outDiv.innerHTML = n1 + " * " + n2 + " = " + (n1*n2);
                break;
            case (ops[3].checked):
                outDiv.innerHTML = n1 + " / " + n2 + " = " + (n1/n2);
                break;
            case (ops[4].checked):
                outDiv.innerHTML = n1 + " % " + n2 + " = " + (n1%n2);
                break;
        }
    }
}

function exercice10() {
    let outDiv = document.getElementById("output");
    let t = parseInt(document.getElementById("taille").value);
    let a = parseInt(document.getElementById("age").value);
    let s = document.getElementById("sexe").value;
    console.log(t);

    if (isNaN(t) || isNaN(a) || ((s != "homme") && (s != "femme"))) {
        alert("Vous n'avez pas bien rempli tous les champs");
    } else {
        if (s == "homme") {
            outDiv.innerHTML = "Poids idéal: " + ((3*t-250)*(a+270)/1200);
        } else if (s == "femme") {
            outDiv.innerHTML = "Poids idéal: " + ((t/2-30)*(180+1)/200);
        }
    }
}

function exercice11() {
    let outDiv = document.getElementById("output");
    let sum = 0;
    
    for (let i = 1; i <= 100; i++) {
        let p = document.createElement("p");
        let text = document.createTextNode(sum + " + " + i + " = " + (sum+i));
        p.appendChild(text);
        outDiv.appendChild(p);
        sum += i;
    }
}

function exercice12() {
    let outDiv = document.getElementById("output");
    let tbl = document.createElement("table");
    let tblBody = document.createElement("tbody");

    for (let i = 0; i <= 10; i++) {
        let row = document.createElement("tr");

        for (let j = 0; j <= 10; j++) {
            let cell = document.createElement("td");   
            let data;

            if (i == 0 && j != 0) {
                cell.setAttribute("style", "font-weight: bold");
                data = j ;
            } else if (i != 0 && j == 0) {
                cell.setAttribute("style", "font-weight: bold");
                data = i;
            } else if (i != 0 && j != 0) {
                data = i*j;
            } else {
                cell.setAttribute("style", "font-weight: bold");
                data = "x";
            }
            
            let cellText = document.createTextNode(data);
            cell.appendChild(cellText);
            row.appendChild(cell);
        }
        tblBody.appendChild(row);
    }

    tbl.appendChild(tblBody);
    outDiv.appendChild(tbl);
    tbl.setAttribute("border", "1");
    tbl.setAttribute("style", "border-collapse: collapse");
}

function exercice13 () {
    let outDiv = document.getElementById("output");
    let voiture = new Object();
    let dateString = document.getElementById("dateAchat").value;
    let [jour, mois, annee] = dateString.split('/');

    voiture.marque = document.getElementById("marque").value;
    voiture.anneeFab = parseInt(document.getElementById("anneeFab").value);
    voiture.dateAchat = new Date(annee, parseInt(mois)-1, parseInt(jour));

    if (voiture.marque == "" || isNaN(voiture.anneeFab) || !(voiture.dateAchat instanceof Date && !isNaN(voiture.dateAchat))) {
        alert("Vous n'avez pas bien rempli tous les champs");
    } else {
        let nomMois = voiture.dateAchat.toLocaleString("default", {month: "long"});
        let dateAchat = voiture.dateAchat.getDate() + " " + nomMois + " " + voiture.dateAchat.getFullYear();
        outDiv.innerHTML = "Marque de la voiture: " + voiture.marque + "<br>" + "Année de fabrication: " + voiture.anneeFab + "<br>" + "Date d'achat: " + dateAchat;
    }
}

function accordeon() {
    var acc = document.getElementsByClassName("accordion");
    var i;
        
    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
        });
    }
}

function init() {
    accordeon();
}

