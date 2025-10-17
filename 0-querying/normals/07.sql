-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### In 7.sql, write a SQL query to find the average ocean surface temperature, rounded to two decimal places, along the equator. Call the resulting column “Average Equator Ocean Surface Temperature”.

SELECT ROUND(AVG("0m"),2) AS 'Average Equator Ocean Surface Temperature' 
FROM "normals" WHERE "latitude" >= -0.5 AND "latitude" <= 0.5;