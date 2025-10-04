-- # LIKE

-- ### %
SELECT "title" FROM "longlist" WHERE "title" LIKE '%love%'; -- this means it matches any string before or after that has love 

/*
┌────────────────────────────┐
│           title            │
├────────────────────────────┤
│ Love in the Big City       │
│ More Than I Love My Life   │
│ Love in the New Millennium │
│ Die, My Love               │
└────────────────────────────┘
*/

SELECT "title" FROM "longlist" WHERE "title" LIKE 'The%'; -- finds a title that begins with a word 'The'

SELECT "title" FROM "longlist" WHERE "title" LIKE 'The%love%'; -- give me back a title with the in beggin and any words after that it has love

--- ### _ 

SELECT "title" FROM "longlist" WHERE "title" LIKE 'P_re'; -- we are basically searching a title with (P,any_char,r,e) so it can be Pore, Pure, Pyre, Pire

/*
┌───────┐
│ title │
├───────┤
│ Pyre  │
└───────┘
*/

SELECT "title" FROM "longlist" WHERE "title" LIKE 't___'; -- match any title with t and 3 characters after it

