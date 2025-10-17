-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### In 6.sql, write a SQL query to return all normal ocean temperatures at 50m of depth, as well as their respective degrees of latitude and longitude, within the Arabian Sea. Include latitude, longitude, and temperature columns. For simplicity, assume the Arabian Sea is encased in the following four coordinates:

SELECT "latitude","longitude","50m" FROM "normals" 
WHERE "latitude" >= 0 AND "latitude" <= 20 AND "longitude" BETWEEN 55 AND 75;