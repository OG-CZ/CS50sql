-- # ORDER BY

SELECT "title", "rating" FROM "longlist" ORDER BY "rating" LIMIT 10; -- ORDER BY default searching least to greatest

/*
┌───────────────────────────────────────┬────────┐
│                 title                 │ rating │
├───────────────────────────────────────┼────────┤
│ The Gospel According to the New World │ 3.05   │
│ The Pine Islands                      │ 3.16   │
│ Love in the New Millennium            │ 3.17   │
│ After the Sun                         │ 3.25   │
│ I Live in the Slums                   │ 3.29   │
│ The War of the Poor                   │ 3.36   │
│ An Inventory of Losses                │ 3.36   │
│ The Death of Murat Idrissi            │ 3.36   │
│ The Dinner Guest                      │ 3.41   │
│ Red Dog                               │ 3.42   │
└───────────────────────────────────────┴────────┘
*/


-- ### ORDER BY ... DESC

SELECT "title", "rating" FROM "longlist" 
ORDER BY "rating" DESC LIMIT 10;

/*
┌───────────────────────────────────────┬────────┐
│                 title                 │ rating │
├───────────────────────────────────────┼────────┤
│ The Eighth Life                       │ 4.52   │
│ A New Name: Septology VI-VII          │ 4.5    │
│ The Other Name: Septology I-II        │ 4.19   │
│ The Years                             │ 4.18   │
│ Still Born                            │ 4.14   │
│ When We Cease to Understand the World │ 4.14   │
│ Elena Knows                           │ 4.1    │
│ The Flying Mountain                   │ 4.1    │
│ Hurricane Season                      │ 4.08   │
│ The Books of Jacob                    │ 4.06   │
└───────────────────────────────────────┴────────┘
*/

SELECT "title", "rating", "votes" FROM "longlist"
ORDER BY "rating" DESC, "votes" DESC 
LIMIT 10; -- its ordered by rating and votes that shows greatest to lowest

-- ### ORDER BY for strings

SELECT "title" FROM "longlist" 
ORDER BY "title" ASC; -- ASC shows A to Z


SELECT "title" FROM "longlist" 
ORDER BY "title" DESC; -- ASC shows Z to A