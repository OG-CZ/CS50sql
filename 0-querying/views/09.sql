-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to find the English title and artist of the print with the highest brightness.

SELECT * FROM "views";

SELECT "english_title", "artist" FROM "views" ORDER BY "brightness" DESC LIMIT 1;