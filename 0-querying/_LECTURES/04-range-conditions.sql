-- # Range Conditions

SELECT "title", "year" FROM "longlist"
WHERE "year" = 2019 OR "year" = 2020 OR "year" = 2021; -- this can be improved using range conditions 

-- ### >= AND <-

SELECT "title", "year" FROM "longlist"
WHERE "year" >= 2019 AND "year" <= 2020; -- get title with a year from 2019 till 2020

-- ### BETWEEN ... AND ...

SELECT "title", "year" FROM "longlist" 
WHERE "year" BETWEEN 2019 AND 2020; -- same result at the top

-- ### > 

SELECT "title", "rating" FROM "longlist" WHERE "rating" > 4.0; -- find title and rating that rating is greater than 4

SELECT "title", "rating", "votes" FROM "longlist" WHERE "rating" > 4.0 AND "votes" > 10000;

/*
┌───────────────────────────────────────┬────────┬───────┐
│                 title                 │ rating │ votes │
├───────────────────────────────────────┼────────┼───────┤
│ When We Cease to Understand the World │ 4.14   │ 23251 │
│ The Eighth Life                       │ 4.52   │ 16350 │
│ Hurricane Season                      │ 4.08   │ 22551 │
│ The Years                             │ 4.18   │ 16888 │
└───────────────────────────────────────┴────────┴───────┘
*/

--- ### =

SELECT "title" FROM "longlist"
WHERE "title" = 'pyre'; -- we are literal searching title exactly 'pyre' but we only have title with 'Pyre'