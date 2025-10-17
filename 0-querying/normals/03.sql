-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### In 3.sql, choose a location of your own and write a SQL query to find the normal temperature at 0 meters, 100 meters, and 200 meters. You might find Google Earth helpful if you’d like to find some coordinates to use!

SELECT "latitude", "longitude", "0m", "100m", "200m" 
FROM "normals" WHERE "longitude" = 89.5 AND "latitude" = 135.5;