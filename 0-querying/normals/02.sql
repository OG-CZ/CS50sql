-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### In 1.sql, write a SQL query to find the normal ocean surface temperature in the Gulf of Maine, off the coast of Massachusetts. To find this temperature, look at the data associated with 42.5° of latitude and -69.5° of longitude.
-- The deepest sensor records temperatures at 225 meters of depth, so you can find this data in the 225m column.

SELECT "225m" FROM "normals" WHERE "latitude" = 42.5 AND "longitude" = -69.5;