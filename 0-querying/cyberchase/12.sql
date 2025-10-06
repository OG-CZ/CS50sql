-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### count the number of unique episode titles.

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT COUNT(DISTINCT "title") AS 'unique titles' FROM "episodes";