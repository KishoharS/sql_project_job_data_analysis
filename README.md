# Data Science Job Market Analysis with SQL

## Introduction

The Data Science field is evolving rapidly, and professionals are increasingly seeking clarity on which **skills, tools, and roles** lead to the best job opportunities and salaries.

In this project, I analyzed a structured job postings dataset using **SQL** to answer key career-building questions:
- What are the top-paying jobs for Data Scientists and Data Analysts?
- Which skills are most in demand?
- Which skills offer the highest salaries?
- What are the most **optimal skills**—those that are both **in-demand** and **high-paying**?

The aim is to provide **actionable career insights** for students, professionals, and job seekers aspiring to succeed in Data Science.

---

## Background

As a Data Science student, I wanted to create a meaningful project that not only demonstrates my SQL skills, but also helps others make smarter decisions about their careers.

I came up with 5 core questions that matter to any aspiring data professional:
1. Which companies are offering the **top-paying Data Scientist jobs**?
2. What **skills** do these top-paying roles require?
3. What are the **most in-demand skills** for Data Scientists?
4. What are the **top-paying skills** for Data Analysts?
5. What are the **optimal skills** that are both well-paid and highly sought after?

I structured the SQL files around these questions to ensure clarity and modularity.

---

##  Tools & Technologies Used

- **SQL**: Main language for querying, filtering, joining, and aggregating data
- **Relational Database Schema**:
  - `job_postings_fact`: Job listings including titles, salaries, company, location
  - `skills_dim`: Contains skill names and IDs
  - `skills_job_dim`: Bridge table linking job postings to skills
  - `company_dim`: Metadata about companies offering jobs
- **Environment**: SQL editor / BigQuery / PostgreSQL (based on availability)
- **Data Visualization** *(optional post-analysis)*: Excel, Tableau, or Python for visual storytelling

---

## The Analysis

### 1️ **Top-Paying Data Scientist Roles**
File: `1_top_paying_jobs.sql`  
- Filters for jobs with:
  - `job_title_short = 'Data Scientist'`
  - `job_work_from_home = TRUE`
  - `salary_year_avg IS NOT NULL`
- Shows **top 10 companies** offering the highest average salaries
- Includes job location, platform, and posting date

**Insight**: Remote roles in tech and consulting tend to offer the best salaries, especially in U.S.-based firms.

---

### 2 **Skills Required by Top-Paying Jobs**
File: `2_top_skills.sql`  
- Uses a CTE (`WITH`) to isolate the **top 10 highest-paying jobs**
- Joins with the `skills_job_dim` table to reveal **skills required** in these roles

**Insight**: The most lucrative Data Scientist roles often demand expertise in tools like **Airflow**, **BigQuery**, **Hugging Face**, and **cloud platforms**.

---

### 4 **Most In-Demand Data Scientist Skills**
File: `3_top_demanded_skills.sql`  
- Counts the number of job postings mentioning each skill
- Filters for `job_title_short = 'Data Scientist'`

**Insight**: Tools like **Python**, **SQL**, **TensorFlow**, and **Pandas** are still among the most frequently requested skills in job postings.

---

### 4 **Top-Paying Skills for Data Analysts**
File: `4_top_paying_skills.sql`  
- Filters for jobs with:
  - `job_title_short = 'Data Analyst'`
  - `salary_year_avg IS NOT NULL`
- Aggregates average salary per skill
- Shows **top 25 highest-paying skills**

**Insight**: Surprisingly, tools like **Solidity**, **Couchbase**, **DataRobot**, and **Golang** are extremely well-paid, showing a trend toward **hybrid engineering-analyst** roles.

---

### 5 **Optimal Skills to Learn (High Demand + High Salary)**
File: `5_optimal_skills.sql`  
- Combines demand and salary metrics:
  - Filters for skills used in **>10 job postings**
  - Includes only remote Data Scientist roles with salary data
  - Sorts by **avg salary** and **skill demand**

**Insight**: Skills like **RShiny**, **Hugging Face**, **Airflow**, **Neo4j**, and **Dplyr** strike the best balance between demand and compensation.

---

## Summary

This project helped me understand the **real-world demand** for data science skills by digging into job postings across companies and locations.

### Key Takeaways:
- **SQL is essential** for performing this kind of job data analysis.
- **Top-paying Data Scientist jobs** are remote-friendly and often demand ML + engineering skills.
- **Skills that are both in-demand and well-paid** give you the highest ROI on your learning time.
- Even **non-coding skills** like Airtable, Asana, and Notion can contribute to higher salaries if integrated well into workflows.

---

## Who This Project Is For

-  **Data science & analytics students** building resumes
-  **Career switchers** choosing what to learn next
-  **Self-taught learners** needing a guided path
-  **Analysts/Data Scientists** refining their skill stack

---

##  Author

**Kishohar**   
[LinkedIn / GitHub / Portfolio links if available]

---

