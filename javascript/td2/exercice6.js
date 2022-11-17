function flip() {
    let img = document.getElementById("imgChange");

    if (img.src.includes("card1.png")) {
        img.src = "card2.png";
    } else if (img.src.includes("card2.png")) {
        img.src = "card1.png";
    }
}