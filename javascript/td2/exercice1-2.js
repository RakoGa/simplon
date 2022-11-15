let voitures = [
    {
        marque: "Fiat",
        anneeFab: 2007,
        dateAchat: "12/12/2012"
    },
    {
        marque: "Clio",
        anneeFab: 2000,
        dateAchat: "06/06/2006"
    },
    {
        marque: "Chery",
        anneeFab: 2017,
        dateAchat: "05/05/2018"
    },
]

document.write("<table>");
    document.write("<tr>");
        document.write("<td>Marque</td>");
        document.write("<td>Année de fabrication</td>");
        document.write("<td>Date d'achat</td>");
    document.write("</tr>");
    for (let i = 0; i < voitures.length; i++) {
        document.write("<tr>");
            for (let v in voitures[i]) {
                document.write("<td>" + voitures[i][v] + "</td>");
            }
            document.write("</tr>");
    }
document.write("</table>");