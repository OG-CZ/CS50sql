-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to find the first and last names of players who were not born in the United States. Sort the results alphabetically by first name, then by last name.

SELECT * FROM "players" LIMIT 100;

SELECT "first_name", "last_name" FROM "players"
WHERE "birth_country" <> 'USA' ORDER BY "first_name" ASC, "last_name" ASC;