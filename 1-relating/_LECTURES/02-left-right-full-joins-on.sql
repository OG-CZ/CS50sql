-- ### sqlite prompt formats
/*
.headers on/off -> Show or hide column names

.mode column -> Outputs aligned text columns (default for readability)

.mode box -> Output results in a boxed table format
*/

-- ### JOIN/INNER JOIN
SELECT * FROM sea_lions;
SELECT * FROM migrations;

SELECT * FROM sea_lions JOIN migrations; -- literal join the 2 tables data

SELECT * FROM sea_lions JOIN migrations ON migrations."id" = sea_lions."id"; -- joins matching id values for both 2 tables

-- ### LEFT JOIN/LEFT OUTER JOIN
SELECT * FROM sea_lions -- this is left cause it comes first
LEFT JOIN migrations ON migrations."id" = sea_lions."id";


-- ### RIGHT JOIN/RIGHT OUTER JOIN
SELECT * FROM sea_lions -- this comes last 
RIGHT JOIN migrations ON migrations."id" = sea_lions."id";

-- ### FULL JOIN/FULL OUTER JOIN
SELECT * FROM sea_lions FULL JOIN migrations ON migrations."id" = sea_lions."id";