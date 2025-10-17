-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to find the players who played their final game in the MLB in 2022. Sort the results alphabetically by first name, then by last name.

SELECT * FROM "players" LIMIT 100;

SELECT "first_name", "last_name" from "players" 
WHERE "final_game" LIKE '2022%' ORDER BY "first_name" ASC, "last_name" ASC;
