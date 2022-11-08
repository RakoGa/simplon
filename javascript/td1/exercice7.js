let input = prompt("Saisissez un nombre de secondes");
let hours;
let minutes;
let seconds;
let rem;

hours = Math.floor(input / 3600);
rem = input % 3600;
minutes = Math.floor(rem / 60);
seconds = rem % 60;

alert(hours + " heures " + minutes + " minutes et " + seconds + " secondes.");

