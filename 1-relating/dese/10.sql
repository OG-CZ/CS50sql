-- In Massachusetts, school district expenditures are in part determined by local taxes on property (e.g., home) valued. In 10.sql, write a SQL query to find the 10 public school districts with the highest per-pupil expenditured. Your query should return the names of the districts and the per-pupil expenditure for each.

SELECT 
    e."per_pupil_expenditure", 
    d."name" 
FROM districts AS d
JOIN expenditures AS e ON d."id" = e."district_id"
WHERE d."type" = 'Public School District'
ORDER BY e."per_pupil_expenditure" DESC 
LIMIT 10;
