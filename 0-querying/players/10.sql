-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write SQL query to answer a question of your choice. This query should

SELECT * FROM "players" LIMIT 100;

SELECT COUNT("bats") AS 'Sum of Left Hand Batters', COUNT("throws") AS 'Sum of Right Hand Throws'
FROM "players" WHERE "birth_year" >= 2000 ORDER BY "bats" ASC, "throws" ASC;