let sum = 0;

for (i = 0; i < 3; i++) {
    sum += parseInt(prompt("Saisissez un nombre"));
}

alert("La moyenne de ces 3 nombres est " + sum / 3);