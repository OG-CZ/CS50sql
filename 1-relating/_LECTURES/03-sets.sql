-- ### sqlite prompt formats
/*
.headers on/off -> Show or hide column names

.mode column -> Outputs aligned text columns (default for readability)

.mode box -> Output results in a boxed table format
*/

-- # SETS

SELECT "name" FROM translators;
SELECT "name" FROM authors;

-- ### UNION

SELECT "name" FROM translators
UNION
SELECT "name" FROM authors;

-- @@@ SPECIAL CASE @@@ --
SELECT 'author' AS 'profession', "name" FROM authors; -- For every row in authors, it shows "author" in the profession column and the actual value from the name column.
-- @@@ SPECIAL CASE @@@ --

SELECT 'author' AS 'profession', "name" FROM authors
UNION 
SELECT 'translator' AS 'profession', "name" FROM translators; -- with this type of union we can implicitly know whos who rather than showign just names

-- ### INTERSECT

SELECT "name" FROM authors
INTERSECT
SELECT "name" FROM translators; -- only appear names in both authors and translators table

-- ### EXCEPT

SELECT "name" FROM authors 
EXCEPT 
SELECT "name" FROM translators; -- shows name that are in the authors table but not in translator even they are both

SELECT "book_id" FROM translated WHERE "translator_id" = (
    SELECT "id" FROM translators WHERE "name" = 'Sophie Hughes'
);

-- ### EXAMPLE INTERSECT SUBQUERY

SELECT "book_id" FROM translated WHERE "translator_id" = ( -- Find all books that were translated by both Sophie Hughes and Margaret Jull Costa.
    SELECT "id" FROM translators WHERE "name" = 'Sophie Hughes'
)
INTERSECT
SELECT "book_id" FROM translated WHERE "translator_id" = (
    SELECT "id" FROM translators WHERE "name" = 'Margaret Jull Costa'
);