/*
- Identify the skills associated with the top 10 highest-paying remote Data Scientist jobs.
- Uses a CTE to first get top-paying jobs, then joins to find required skills.
*/

WITH top_paying_jobs AS (
  SELECT
    job_id,
    job_title_short,
    salary_year_avg,
    company_dim.name AS company_name
  FROM job_postings_fact
  LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
  WHERE
    salary_year_avg IS NOT NULL AND
    job_title_short = 'Data Scientist' AND
    job_location = 'Anywhere'
  ORDER BY salary_year_avg DESC
  LIMIT 10
)

SELECT
  top_paying_jobs.*,
  skills_dim.skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id;