-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### In 4.sql, write a SQL query to find the lowest normal ocean surface temperature.

SELECT MIN("0m") FROM "normals";
