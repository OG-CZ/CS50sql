-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to find the average height and weight, rounded to two decimal places, of baseball players who debuted on or after January 1st, 2000. Return the columns with the name “Average Height” and “Average Weight”, respectively.

SELECT * FROM "players" LIMIT 100;

SELECT ROUND(AVG("height"), 2) AS 'Average Height', ROUND(AVG("weight"), 2) AS 'Average Weight' 
FROM "players" WHERE "debut" >= '2000-01-01';