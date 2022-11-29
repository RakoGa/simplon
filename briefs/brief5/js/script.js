function calcul   () {
    let articles = document.getElementsByClassName("article");
    let prix = [15,12,14,25,23,27,7,5,6,2,3,3,6,8,3,2,4];
    let total = 0;
    let imgHTML = '<img src="img/panier.png" alt="Panier" width="20" height="20">';

    for(let i = 0; i < articles.length; i++){
        total += prix[i] * articles[i].value;
    }
    document.getElementById("btnTotal").innerHTML = total + "€ " + imgHTML; 
    genererTable();
}

function genererTable() {
    let articles = document.getElementsByClassName("article");
    let recap = document.getElementById("recap");
    let tblBody = document.createElement("tbody");

    recap.innerHTML = "";

    for(let i = 0; i <articles.length; i++){
        let row = document.createElement("tr");
        if(articles[i].value > 0) {
            let td1 = document.createElement("td");
            let td2 = document.createElement("td");
            let td3 = document.createElement("td");
            
            // use classes on the img/p/name instead lole wtf is that
            td1.appendChild(articles[i].previousSibling.previousSibling.previousSibling);
            td2.appendChild(articles[i].previousSibling.previousSibling);
            td3.appendChild(articles[i].previousSibling);
            row.appendChild(td1);
            row.appendChild(td2);
            row.appendChild(td3);
        }
        tblBody.appendChild(row);  
    }

    recap.appendChild(tblBody);
}
