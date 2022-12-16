-- 3)
SELECT *
FROM films;

-- 4)
SELECT DISTINCT CODEFILM 
FROM locations;

-- 5)
SELECT NOMFILM
FROM films
ORDER BY NOMFILM;

-- 6)
SELECT *
FROM clients
ORDER BY VILLECLI;

-- 7)
SELECT * 
FROM locations
ORDER BY DATEDEBUT;

-- 8)
SELECT DISTINCT VILLECLI
FROM clients, locations
WHERE clients.CODECLI = locations.CODECLI;

        -- 8) 2)
SELECT DISTINCT VILLECLI
FROM clients
INNER JOIN locations ON clients.CODECLI = locations.CODECLI; 

-- 9)
SELECT NOMFILM, DATEDEBUT 
FROM films, locations 
WHERE films.CODEFILM = locations.CODEFILM;

-- 10)
SELECT locations.CODEFILM, NOMFILM, DATEDEBUT 
FROM films, locations 
WHERE films.CODEFILM = locations.CODEFILM AND DATEDEBUT BETWEEN '2013-04-09' AND '2013-04-11';

-- 11)
SELECT NOMCLI
FROM clients
WHERE NOMCLI LIKE 'C%' OR NOMCLI LIKE 'D%'
ORDER BY NOMCLI;

-- 12)
SELECT NOMCLI, VILLECLI
FROM clients
WHERE VILLECLI IN ('Forbach', 'Saint-Avold');

-- 13)
SELECT COUNT(*) AS 'Nombre de films'
FROM locations
WHERE CODECLI = 1;

-- 14)
SELECT SUM(DUREE * 2 * 1.2) AS "Chiffre d\'affaire"
FROM locations
WHERE CODEFILM = 2;

-- 15)
SELECT NOMFILM, MAX(DUREE)
FROM films, locations
WHERE films.CODEFILM = locations.CODEFILM
GROUP BY locations.CODEFILM;                                    

-- 16)
SELECT NOMCLI
FROM clients, locations
WHERE clients.CODECLI = locations.CODECLI 
GROUP BY NOMCLI
HAVING SUM(DUREE) > 4

-- 17)
DELETE FROM clients 
WHERE NOMCLI = 'Dubois'; 