# Querying

FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY -> LIMIT/OFFSET

Querying means asking a question to the database in other words, you’re requesting specific data from one or more tables.

- [Querying](#querying)
- [Tables](#tables)
- [Spreadsheets](#spreadsheets)
- [Database](#database)
  - [Why database?](#why-database)
    - [Scale](#scale)
    - [Frequency](#frequency)
    - [Speed](#speed)
- [Database Management System (DBMS)](#database-management-system-dbms)
- [Structured Query Language (SQL)](#structured-query-language-sql)
- [Opening sqlite file](#opening-sqlite-file)
- [SELECT](#select)
  - [LIMIT](#limit)
  - [WHERE](#where)
    - [Operators (=, !=, <>, >, <, >=, <=)](#not)
    - [NOT](#not)
    - [AND / OR / ()](#not)
  - [NULL / IS NULL / IS NOT NULL](#null--is-null--is-not-null)
- [LIKE](#like)
- [Range conditions](#range-conditions)
  - [BETWEEN ... AND ...](#between--and-)
- [ORDER BY](#order-by)
  - [ASC](#order-by-asc)
  - [DESC](#order-by-desc)
- [Aggregate functions](#aggregate-functions)
  - [AVG / ROUND](#avg--round)
  - [MAX / MIN](#max--min)
  - [SUM](#sum)
  - [COUNT](#count)
  - [DISTINCT](#distinct)
  - [AS (aliases)](#as-aliases)
- [SQLite commands](#sqlite-commands)
- [Querying logical execution summary](#querying-logical-execution-summary)

### tables

- a table has set a set of information
- every row in the table store one item in that set
- where every column has a information of that item

### spreadsheets

- in the old era we have tablet or pen for this table
- but now we have software to store this like apple numbers, google sheets, microsoft excel

### database

A collection of data organized for creating, reading, updating and deleting.

why database?

##### scale

if we store millions of data, better to use databse than spreadsheets

##### frequency

to update data instantly it can handle that capacity vs spreasheet

##### speed

if we look up info, we can do it much faster than spreadsheet

we can do some algorithm to seach much faster

#### database management system (DBMS)

software via which you can interact with a database

such as:

- MySQL
- Oracle
- PostgreSQL
- SQLite
- ...

#### Structured Query Language (sql)

a language via which you can create, read, and delete data in a database

this was defined by the ANSI corporation they made official SQL language

- by convention we use uppercase to every SQL keyword

#### opening sqlite file

sqlite3 file_name.db

### SELECT

- SELECT is selecting a table to show
- we select here the column we want to

#### LIMIT

LIMIT restricts how many rows a query returns

### WHERE

allows me to get some rows where some conditions is only true

it must stricly have a condition

- = -> equals
- != -> not equals
- <> -> just same to not equals
- '' -> this is a string
- "" -> this is a table

#### NOT

we can also negate a condition using NOT

#### AND OR ()

- AND -> combines two condition
- OR -> either one of the conditions can be true
- () -> group conditions to control the order of evaluation just like in PEMDAS

#### NULL

which data is missing from a table

type called NULL a value that doesnt exist in our database

- IS NULL -> check if its empty
- IS NOT NULL -> check if its not empty thus there is a data there

### LIKE

LIKE is a keyword used to find a string in a table

LIKE doesnt care about case sensitivity

- % -> this can match any character around a string i give it
- \_ -> match any single character

### range conditions

```sql
SELECT "title", "year" FROM "longlist"
WHERE "year" >= 2019 AND "year" <= 2020;
```

- \> -> greater than
- < -> less than
- \>= -> greater than or equals
- <= -> less than or equals

#### BETWEEN ... AND ...

a way to search a data in between 2 numbers like **WHERE "year" >= 2019 AND "year" <= 2020;**

### ORDER BY

it allows us take a result of our query and ORDER them BY some column itself

it could be order by number of votes, order by rating, order by alphabet

BUT BY DEFAULT IT IS ORDERING BY SMALLEST TO GREATEST

#### ORDER BY ... ASC

- reads data with greatest number at the top down to lowest for numbers
- reads data with A to Z for strings
- by default everythign is ASC

#### ORDER BY ... DESC

- reads data with lowest at the top down to greatest for number
- reads data Z to A for strings

### aggregate functions

these allow us to take a whole set of rows and return a single element based of that row

aggregate means to combine or bring together and we are aggregatings some number of rows and bring it down to one single cell

- COUNT -> count number of rows but it only counts NON NULL values
- AVG -> take average of rating rows
- MIN -> finding minimum number
- MAX -> finding max number
- SUM -> find sum of votes

#### AS

AS -> creates an alias a temporary name for a column or table in the result of a query. It makes output clearer and lets you refer to expressions more readably.

#### DISTINCT

we are finding unique values in our column so it cannot count or read duplicate values

DISTINCT is only a query-time operator

### sqlite commands

- .quit -> leave your sqlite terminal
- .headers on/off -> Show or hide column names
- .mode column -> Outputs aligned text columns (default for readability)
- .mode box -> Output results in a boxed table format

### querying logical execution summary

FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY -> LIMIT/OFFSET

- FROM: build rows from tables (and JOINs/subqueries).
- WHERE: filter individual rows (cannot use aggregates here).
- GROUP BY: group remaining rows into buckets by column(s).
- HAVING: filter those groups (can use aggregate results).
- SELECT: compute the output columns/expressions (and create aliases).
- ORDER BY: sort the final rows.
- LIMIT/OFFSET: return only the requested slice of rows.

```sql
-- Sort+limit first, then filter that limited set (use CTE/subquery)
WITH top10 AS (
  SELECT title, rating, votes
  FROM longlist
  ORDER BY votes DESC
  LIMIT 10
)
SELECT *
FROM top10
WHERE rating >= 4.0;
```

```sql
-- Filter then sort (usual)
SELECT title, rating
FROM longlist
WHERE rating >= 4.0
ORDER BY votes DESC
LIMIT 10;
```
