function moveUp() {
    let focusedImg = document.getElementById("focused");
    let imgDiv = document.getElementById("images");

    if (focusedImg != null) {
        if (focusedImg.previousElementSibling != null) {
            imgDiv.insertBefore(focusedImg, focusedImg.previousElementSibling);
        } else {
            alert("L'image est déjà tout en haut!!!11!!!!!1111!!!!!");
        }
    } else {
        alert("Sélectionnez une image d'abord!!!!11!!!!!1!!");
    }
}

function moveDown() {
    let focusedImg = document.getElementById("focused");
    let imgDiv = document.getElementById("images");

    if (focusedImg != null) {
        if (focusedImg.nextElementSibling != null) {
            imgDiv.insertBefore(focusedImg.nextElementSibling, focusedImg);
        } else {
            alert("L'image est déjà tout en bas!!!11!!!!!1111!!!!!");
        }
    } else {
        alert("Sélectionnez une image d'abord!!!!11!!!!!1!!");
    }
}

function select(e) {
    let prev = e.previousElementSibling;
    let next = e.nextElementSibling;

    while (prev != null) {
        if (prev.hasAttribute("id")) {
            prev.style.border = "";
            prev.removeAttribute("id");
        }
        prev = prev.previousElementSibling;
    }

    while (next != null) {
        if (next.hasAttribute("id")) {
            next.style.border = "";
            next.removeAttribute("id");
        }
        next = next.nextElementSibling;
    }

    e.style.border = "3px solid red";
    e.setAttribute("id", "focused");
}