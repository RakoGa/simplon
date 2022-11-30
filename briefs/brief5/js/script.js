function calcul() {
    let articles = document.getElementsByClassName("article");
    let prix = [15,12,14,25,23,27,7,5,6,2,3,3,6,8,3,2,4];
    let total = 0;
    let imgHTML = '<img src="img/panier.png" alt="Panier" width="20" height="20">';

    for(let i = 0; i < articles.length; i++){
        total += prix[i] * articles[i].value;
    }
    document.getElementById("btnTotal").innerHTML = total + "€ " + imgHTML; 
    genererTable(total);
}

function genererTable(total) {
    let articles = document.getElementsByClassName("article");
    let form = document.getElementById("order");
    let panierTxt = document.getElementById("panierTxt");
    let aImgs = document.getElementsByClassName("aImg");
    let aName = document.getElementsByClassName("aName");
    let aPrice = document.getElementsByClassName("aPrice");
    let recap = document.getElementById("recap");
    let tblBody = document.createElement("tbody");

    recap.innerHTML = "";
    form.setAttribute("style", "");

    for(let i = 0; i < articles.length; i++){
        let row = document.createElement("tr");
        if(articles[i].value > 0) {
            let td1 = document.createElement("td");
            let td2 = document.createElement("td");
            let td3 = document.createElement("td");

            if (articles[i].classList.contains("boisson")) {
                let td1Text = document.createTextNode("");
                td1.appendChild(td1Text);
            } else {
                td1.appendChild(aImgs[i].cloneNode());
            }
            
            let td2Text = document.createTextNode(aName[i].innerHTML + " x " + articles[i].value);
            td2.appendChild(td2Text);
            let td3Text = document.createTextNode(aPrice[i].innerHTML);
            td3.appendChild(td3Text);
            row.appendChild(td1);
            row.appendChild(td2);
            row.appendChild(td3);
        }
        tblBody.appendChild(row);  
    }
    let botRow = document.createElement("tr");
    let botTd1 = document.createElement("td");
    let bt1Text = document.createTextNode("Montant à régler: ");
    let botTd2 = document.createElement("td");
    let bt2Text = document.createTextNode(total + "€");

    botTd1.appendChild(bt1Text);
    botTd2.appendChild(bt2Text);
    botRow.appendChild(botTd1);
    botRow.appendChild(botTd2);
    tblBody.appendChild(botRow);
    botTd1.setAttribute("colspan", "2");
    botTd2.setAttribute("colspan", "3");

    recap.appendChild(tblBody);

    panierTxt.scrollIntoView({behavior: 'smooth'});
}

function scrollToRecap() {
    let recapTxt = document.getElementById("recapTxt");
    recapTxt.scrollIntoView({behavior: 'smooth'});   
}
