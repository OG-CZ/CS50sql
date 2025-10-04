-- # where

SELECT "title", "author" FROM "longlist" WHERE "year" = 2023; -- get title and author data that is only under year 2023

SELECT "title", "author" FROM "longlist" WHERE "year" = 2022;

SELECT "title", "author" FROM "longlist" WHERE "year" = 2018;

-- ### != same to <>

SELECT "title", "format" FROM "longlist" WHERE "format" != 'handcover'; -- get title and foramt where format is not handcover, inside a single quote '' is a string

SELECT "title", "format" FROM "longlist" WHERE "format" <> 'handcover'; -- <> same to !=

-- ### NOT

SELECT "title", "format" FROM "longlist" WHERE NOT "format" = 'handcover';

-- ### AND OR ()

SELECT "title", "author" FROM "longlist" WHERE "year" = 2022 OR "year" = 2023;

SELECT "title", "format" FROM "longlist" WHERE ("year" = 2022 OR "year" = 2023) AND "format" != 'hardcover';

-- ### NULL

SELECT "title", "translator" FROM "longlist" WHERE "translator" IS NULL; -- check a title where translator is null so no translator in that book

SELECT "title", "translator" FROM "longlist" WHERE "translator" IS NOT NULL; -- see all book with a translator
