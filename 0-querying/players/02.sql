-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to find the side (e.g., right or left) Babe Ruth hit.

SELECT * FROM "players" LIMIT 100;

SELECT "bats" AS 'Babe Ruth Batting Side' FROM "players" 
WHERE "first_name" LIKE "Babe" AND "last_name" LIKE "Ruth";