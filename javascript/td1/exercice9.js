let n1 = parseInt(prompt("Saisissez un premier nombre"));
let n2 = parseInt(prompt("Saisissez un second nombre"));

function br() {
    document.write("<br>");
}

document.write(n1 + " + " + n2 + " = " + (n1+n2) + "\<br\>");
// br();
document.write(n1 + " - " + n2 + " = " + (n1-n2) + "\<br\>");
// br();
document.write(n1 + " * " + n2 + " = " + (n1*n2) + "\<br\>");
// br();
document.write(n1 + " / " + n2 + " = " + (n1/n2) + "\<br\>");
// br();
document.write(n1 + " % " + n2 + " = " + (n1%n2) + "\<br\>");
