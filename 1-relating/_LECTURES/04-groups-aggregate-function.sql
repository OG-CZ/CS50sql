-- ### sqlite prompt formats
/*
.headers on/off -> Show or hide column names

.mode column -> Outputs aligned text columns (default for readability)

.mode box -> Output results in a boxed table format
*/

-- # GROUPS

SELECT AVG("rating") FROM ratings; -- its choosing all rating and not specific book_id

SELECT "book_id", AVG("rating") 
FROM ratings GROUP BY "book_id"; -- not its grouped by id then it combines all same id and average its rating

-- ### HAVING

SELECT "book_id", ROUND(AVG("rating"), 2) AS "average rating" 
FROM ratings GROUP BY "book_id"
HAVING "average rating" > 4.0 -- it use different keyword for groups to apply
ORDER BY "average rating" DESC; 

SELECT "book_id", COUNT("rating") AS 'total ratings' 
FROM ratings GROUP BY "book_id"
HAVING "total ratings" < 200;
