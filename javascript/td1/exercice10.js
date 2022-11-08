let t = parseInt(prompt("Taille en cm:"));
let a = parseInt(prompt("Age:"));
let s = prompt("Sexe (homme/femme):");

if (s == "homme") {
    alert("Poids idéal: " + ((3*t-250)*(a+270)/1200));
} else if (s == "femme") {
    alert("Poids idéal: " + ((t/2-30)*(180+1)/200));
}