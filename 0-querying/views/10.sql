-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ### write a SQL query to answer a question of your choice about the prints. The query should:

SELECT * FROM "views";

SELECT "brightness" AS 'Value', "english_title" AS 'Hokusai brightest painting' FROM "views" WHERE "artist" = 'Hokusai' ORDER BY "brightness" DESC;