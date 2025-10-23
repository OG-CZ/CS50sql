-- Another parent wants to send their child to a district with few other studentd. In 9.sql, write a SQL query to find the name (or names) of the school district(s) with the single least number of pupild. Report only the name(s).

SELECT d."name"
FROM districts AS d
JOIN expenditures AS e ON d."id" = e."district_id"
GROUP BY d."name"
ORDER BY e."pupils" ASC 
LIMIT 1;