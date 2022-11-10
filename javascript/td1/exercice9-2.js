let n1 = parseInt(prompt("Saisissez un premier nombre"));
let n2 = parseInt(prompt("Saisissez un second nombre"));
let op = prompt("Saisissez un opérateur");

switch(op) {
    case "+":
        document.write(n1 + " + " + n2 + " = " + (n1+n2) + "\<br\>");
        break;
    case "-":
        document.write(n1 + " - " + n2 + " = " + (n1-n2) + "\<br\>");
        break;
    case "*":
        document.write(n1 + " * " + n2 + " = " + (n1*n2) + "\<br\>");
        break;
    case "/":
        document.write(n1 + " / " + n2 + " = " + (n1/n2) + "\<br\>");
        break;
    case "%":
        document.write(n1 + " % " + n2 + " = " + (n1%n2) + "\<br\>");
        break;
}
