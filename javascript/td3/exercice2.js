function changerTexte() {
    document.getElementById("p1").innerHTML = document.getElementsByName("zone")[0].value;
}

function copierTexte() {
    let newP = document.createElement("p");
    let ogP = document.getElementById("p1");
    let body = ogP.parentNode;

    newP.innerHTML = ogP.innerHTML;
    body.insertBefore(newP, ogP)
    
}