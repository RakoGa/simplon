function calculer() {
    let score = 0;
    let q1 = document.getElementsByName("q1");
    let q2 = document.getElementsByName("q2");
    let q3 = document.getElementById("q3");    

    if (q1[0].checked) {
        score++;
    }

    if (q2[2].checked) {
        score++;
    }

    if (q3.selectedIndex == 3) {
        score++;
    }

    document.getElementById("score").value = score;
}