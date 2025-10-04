-- ### sqlite prompt formats
/*
.headers on/off -> Show or hide column names

.mode column -> Outputs aligned text columns (default for readability)

.mode box -> Output results in a boxed table format
*/

-- ### select

SELECT * FROM "longlist"; -- return all data

SELECT "title" FROM "longlist"; -- return title data

SELECT "title", "author" FROM "longlist"; -- return data from title and author table

-- ### limit

SELECT "title" FROM "longlist" LIMIT 10; -- return top 10 from the database

SELECT "title" FROM "longlist" LIMIT 5; -- return top 5

/*
┌───────────────────────────────────────┐
│                 title                 │
├───────────────────────────────────────┤
│ Boulder                               │
│ Whale                                 │
│ The Gospel According to the New World │
│ Standing Heavy                        │
│ Time Shelter                          │
└───────────────────────────────────────┘
*/