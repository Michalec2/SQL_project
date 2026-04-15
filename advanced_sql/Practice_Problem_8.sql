SELECT *
FROM january_jobs
WHERE salary_year_avg > 70000 AND job_title = 'Data Analyst'


UNION ALL

SELECT *
FROM february_jobs
WHERE salary_year_avg > 70000 AND job_title = 'Data Analyst'

UNION ALL

SELECT *
FROM march_jobs
WHERE salary_year_avg > 70000 AND job_title = 'Data Analyst'