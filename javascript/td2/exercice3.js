function calculRemise(){
    let prixProduit, nPieces, remise, total, radioProduit, radioRemise;
    radioProduit = document.getElementsByName("produit");
    radioRemise = document.getElementsByName("remise");

    for (let i = 0; i < radioProduit.length; i++) {
        if (radioProduit[i].checked) {
            prixProduit = radioProduit[i].value;
            break;
        }
    }

    nPieces = document.getElementById("nPieces").value;

    for (let i = 0; i < radioRemise.length; i++) {
        if (radioRemise[i].checked) {
            remise = radioRemise[i].value;
            break;
        }
    }

    total = prixProduit * nPieces * remise;
    document.getElementById("resultat").innerHTML = total;
}