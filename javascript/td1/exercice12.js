function generateTable() {
    const tbl = document.createElement("table");
    const tblBody = document.createElement("tbody");

    for (let i = 0; i <= 10; i++) {
        const row = document.createElement("tr");

        for (let j = 0; j <= 10; j++) {
            const cell = document.createElement("td");   
            let data;

            if (i == 0 && j != 0) {
                data = j ;
            } else if (i != 0 && j == 0) {
                data = i;
            } else if (i != 0 && j != 0) {
                data = i*j;
            } else {
                data = "x";
            }
            
            const cellText = document.createTextNode(data);
            cell.appendChild(cellText);
            row.appendChild(cell);
        }
        tblBody.appendChild(row);
    }

    tbl.appendChild(tblBody);
    document.body.appendChild(tbl);
    tbl.setAttribute("border", "1");
}