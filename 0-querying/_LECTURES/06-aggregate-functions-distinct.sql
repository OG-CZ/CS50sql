-- # Aggregate Functions

--- ### AVG 

SELECT AVG("rating") FROM "longlist"; -- returns all the average of rating`s row

/*
THIS COULD BE BETTER IF WE CAN ROUND IT
┌──────────────────┐
│  AVG("rating")   │
├──────────────────┤
│ 3.75371794871795 │
└──────────────────┘
*/

SELECT ROUND(AVG("rating"), 2) FROM "longlist"; -- rounding it to 2 decimal places

/*
WELL THIS COULD BE ANOTHER BETTER IF WE CAN CHANGE TITLE
┌─────────────────────────┐
│ ROUND(AVG("rating"), 2) │
├─────────────────────────┤
│ 3.75                    │
└─────────────────────────┘
*/

SELECT ROUND(AVG("rating"), 2) AS "Average Rating" FROM "longlist"; -- make an alias -> AS 

/*
┌────────────────┐
│ Average Rating │
├────────────────┤
│ 3.75           │
└────────────────┘
*/

-- ### MAX and MIN

SELECT MAX("rating") AS "Highest rating of the books" FROM "longlist";

SELECT MIN("rating") AS "Lowest rating of the books" FROM "longlist";

-- ### SUM

SELECT SUM("votes") FROM "longlist"; 

--- ### COUNT

SELECT COUNT(*) FROM "longlist"; -- give me all table and count all the rows

SELECT COUNT("translator") FROM "longlist"; -- count all rows with translator that are not null 

--- ### DISTINCT

SELECT COUNT("publisher") FROM "longlist"; -- this is wrong because we are counting all rows, what we need is count distinct publisher means no duplicate

SELECT DISTINCT "publisher" FROM "longlist";  -- shows only 1 time of publisher

SELECT COUNT(DISTINCT "publisher") FROM "longlist"; 

--- ### ?

SELECT MAX("title"), MIN("title") FROM "longlist"; -- Returns a single row with two values: the lexicographically largest title (MAX) and the smallest title (MIN) from the whole table.