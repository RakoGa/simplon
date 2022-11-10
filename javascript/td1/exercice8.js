let age = prompt("Saisissez un âge");

switch(true) {
    case (age <= 0):
        alert("Erreur: le nombre doit être supérieur à 0");
        break;
    case (age <= 13):
        alert("Vous êtes encore trop jeune");
        break;
    case (age >= 13 && age <= 18):
        alert("Vous êtes encore mineur(e)");
        break;
    case (age >= 18 && age <= 25):
        alert("Vous êtes déjà majeur(e)");
        break;
    default:
        alert("Ne vous vieillissez donc pas!");
}

// if (age <= 0) {
//     alert("Erreur: le nombre doit être supérieur à 0");
// } else if (age <= 13) {
//     alert("Vous êtes encore trop jeune");
// } else if (age >= 13 && age <= 18) {
//     alert("Vous êtes encore mineur(e)");
// } else if (age >= 18 && age <= 25) {
//     alert("Vous êtes déjà majeur(e)");
// } else {
//     alert("Ne vous vieillissez donc pas!")
// }

