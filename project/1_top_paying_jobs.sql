/* 
- Retrieve top-paying Data Scientist jobs
- Includes job title, location, posting platform, posting date, salary, and company
- Only considers remote jobs with salary data
*/

SELECT
  job_title_short,
  job_location,
  job_via,
  job_posted_date,
  salary_year_avg,
  company_dim.name AS company_name
FROM
  job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
  salary_year_avg IS NOT NULL AND 
  job_work_from_home = TRUE AND
  job_title_short = 'Data Scientist'
ORDER BY
  salary_year_avg DESC
LIMIT 10