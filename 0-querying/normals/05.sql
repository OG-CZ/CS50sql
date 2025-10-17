-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### In 5.sql, write a SQL query to find the highest normal ocean surface temperature.

SELECT MAX('0m') FROM "normals";