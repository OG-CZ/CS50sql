-- # sqlite prompts

.mode box -- sqlite command for format box
.headers on -- show column names
.tables -- to see all tables


-- ### write a query that counts the number of episodes released in Cyberchase’s first 6 years, from 2002 to 2007, inclusive.

SELECT * FROM "episodes"; -- view all data in episodes table

SELECT COUNT("episode_in_season") FROM "episodes" 
WHERE "air_date" BETWEEN '2002-01-01' AND '2007-12-31';