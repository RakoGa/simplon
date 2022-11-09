function generateTable() {
    const tbl = document.createElement("table");
    const tblBody = document.createElement("tbody");

    for (let i = 1; i <= 10; i++) {
        const row = document.createElement("tr");

        for (let j = 1; j <= 10; j++) {
            const cell = document.createElement("td");   
            // if (i == 0 && j != 0) {
            //     const cellText = document.createTextNode(j);
            // } else if (i != 0 && j == 0) {
            //     const cellText = document.createTextNode(i);
            // } else if (i != 0 && j != 0) {
            //     const cellText = document.createTextNode(i*j);
            // } else {
            //     const cellText = document.createTextNode("");
            // }
            const cellText = document.createTextNode(i*j);
            cell.appendChild(cellText);
            row.appendChild(cell);
        }
        tblBody.appendChild(row);
    }

    tbl.appendChild(tblBody);
    document.body.appendChild(tbl);
    tbl.setAttribute("border", "1");
}