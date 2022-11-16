function verif() {
    let insc_msg = document.getElementById("insc_msg");
    let nom_prenom = document.getElementById("nom_prenom").value;
    let nss = document.getElementById("nss").value;
    let email = document.getElementById("email").value;
    let regexNSS = "^\d{13}$";
    // let formation;

    if (!nom_prenom) {
        alert("nom prénom!!!");
    }

    if (!nss) {
        alert("nss!!!");
    } else if (!regexNSS.test(nss)) {
        alert("13 chiffres!!!");
    }

    if (!email) {
        alert("email!!!");
    } else if (!"/@{1]/g".test(email)) {
        alert("@!!!!!!!");
    }



    // if (nom_prenom == "" || nss == "" || email == "") {
    //     if (nom_prenom == "") {
    //         let p = document.createElement("p");
    //         let text = document.createTextNode("Veuillez taper votre nom et prénom!");
    //         p.appendChild(text);
    //         insc_msg.appendChild(p);
    //         alert("nom prénom!!!");
    //     }
    //     if (nss == "") {
    //         // let p = document.createElement("p");
    //         // let text = document.createTextNode("Veuillez taper votre NSS!");
    //         // p.appendChild(text);
    //         // insc_msg.appendChild(p);
    //         alert("nss!!!");
    //     }
    //     if (email == "") {
    //         // let p = document.createElement("p");
    //         // let text = document.createTextNode("Veuillez taper votre E-Mail!");
    //         // p.appendChild(text);
    //         // insc_msg.appendChild(p);
    //         alert("email!!!");
    //     }
    // } else {
    //     let regexNSS = "^\d{13}$";
    //     if (!regexNSS.test(nss)) {
    //         // let p = document.createElement("p");
    //         // let text = document.createTextNode("Le champ NSS ne doit contenir que 13 chiffres de 0 à 9!");
    //         // p.appendChild(text);
    //         // insc_msg.appendChild(p);
    //         alert("13 chiffres!!!");
    //     }
    //     if (!"/@{1]/g".test(email)) {
    //         // let p = document.createElement("p");
    //         // let text = document.createTextNode("L'adresse e-mail doit comporter le caractère \"@\"!");
    //         // p.appendChild(text);
    //         // insc_msg.appendChild(p);
    //         alert("@!!!!!!!");
    //     }
    // }
}

function clear() {
    let form = document.getElementById("form");
    form.reset();
    alert("buh");
}