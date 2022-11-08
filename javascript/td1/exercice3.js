let prenom = prompt("Entrez votre prénom");
let classe = prompt("Entrez votre classe");

if (prenom != "" && classe != "") {
    alert("Bonjour " + prenom + ", votre classe est " + classe + ".");
} else if (prenom == "" && classe != ""){
    alert("Vous n'avez pas entré votre prénom!");
} else if (prenom != "" && classe == ""){
    alert("Vous n'avez pas entré votre classe!");
} else {
    alert("Vous n'avez rien saisi!")
}