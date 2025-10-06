-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to find the average entropy of prints by Hiroshige, rounded to two decimal places. Call the resulting column “Hiroshige Average Entropy

SELECT * FROM "views";


SELECT ROUND(AVG("entropy"),2) AS 'Hiroshige Average Entropy' FROM "views" WHERE "artist" = 'Hiroshige';