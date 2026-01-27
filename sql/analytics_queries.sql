-- Examples: update these once you load real data

-- Top skills
SELECT skill, COUNT(*) AS demand_count
FROM job_skills
GROUP BY skill
ORDER BY demand_count DESC
LIMIT 20;

-- Salary by title
SELECT job_title,
       AVG((salary_min + salary_max)/2.0) AS avg_salary_mid
FROM job_postings
WHERE salary_min IS NOT NULL AND salary_max IS NOT NULL
GROUP BY job_title
ORDER BY avg_salary_mid DESC
LIMIT 20;
