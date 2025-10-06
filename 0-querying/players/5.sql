-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to return the first and last names of all right-handed batters. Sort the results alphabetically by first name, then by last name.

SELECT * FROM "players" LIMIT 100;

SELECT "first_name", "last_name" FROM "players" 
WHERE "bats" = 'R' ORDER BY "first_name" ASC, "last_name" ASC;