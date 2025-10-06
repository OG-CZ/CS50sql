-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables


-- ### write a SQL query to list the ids, titles, and production codes of all episodes. Order the results by production code, from earliest to latest.

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT "id", "title", "production_code" FROM "episodes" 
ORDER BY "production_code" ASC;