-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables

-- ###  write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT COUNT("episode_in_season") FROM "episodes" 
WHERE "air_date" >= '2018-01-01' AND "air_date" <= '2023-12-31';
