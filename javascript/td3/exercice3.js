function nombres() {
    let nP = document.getElementsByTagName("p").length;
    let nA = document.getElementsByTagName("a").length;

    alert(nP + " paragraphes et " + nA + " liens");
}

function contenu() {
    let nP = document.getElementsByTagName("p").length;
    let nA = document.getElementsByTagName("a").length;
    let content = document.getElementById("content");

    for (let i = 0; i < nP; i++) {
        content.appendChild(document.getElementsByTagName("p")[i].cloneNode(true));
    }

    for (let i = 0; i < nA; i++) {
        let newA = document.getElementsByTagName("a")[i].cloneNode(true);
        let linkP = document.createElement("p");
        let textHref = document.createTextNode(newA.getAttribute("href"));

        content.appendChild(newA);
        linkP.appendChild(textHref);
        content.appendChild(linkP);
    }

}