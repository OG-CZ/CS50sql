-- A parent asks you for advice on finding the best public school districts in Massachusetts. In 12.sql, write a SQL query to find public school districts with above-average per-pupil expenditures and an above-average percentage of teachers rated “exemplary”. Your query should return the districts’ names, along with their per-pupil expenditures and percentage of teachers rated exemplary. Sort the results first by the percentage of teachers rated exemplary (high to low), then by the per-pupil expenditure (high to low).

SELECT 
    d."name",
    e."per_pupil_expenditure",
    se."exemplary"
FROM districts AS d
JOIN expenditures AS e ON d."id" = e."district_id"
JOIN staff_evaluations AS se ON d."id" = se."district_id"
WHERE "type" = 'Public School District'
AND e."per_pupil_expenditure" > (
    SELECT AVG("per_pupil_expenditure") 
    FROM expenditures 
)
AND se."exemplary" > (
    SELECT AVG("exemplary") 
    FROM staff_evaluations
)
ORDER BY se."exemplary" DESC, e."per_pupil_expenditure" DESC;