let v1,v2,v3;
v1 = new Object();
v2 = new Object();
v3 = new Object();

v1.marque = "Golf";
v1.dateFab = new Date("2015-06-10");
v1.dateAchat = 2017;

v2.marque = "Opel";
v2.dateFab = new Date("2016-07-11");
v2.dateAchat = 2018;

v3.marque = "Audi";
v3.dateFab = new Date("2017-08-12");
v3.dateAchat = 2019;

let voitures = [v1, v2, v3];
let t = document.getElementById("t");

for (let i = 1; i < t.rows.length; i++) {    
    for (let j = 0; j < t.rows[i].cells.length; j++) {
        t.rows[i].cells[j].innerHTML = voitures[Object.keys(voitures[i-1])[j]];
    }
}