# Introduction
This project is a comprehensive data analysis focusing on the data job market, specifically analyzing salaries and required skills. The goal is to extract meaningful insights from raw data using SQL to answer strategic questions about career development and skill optimization.

# Background
The dataset contains information about job postings, companies, and specific technical skills required for various roles. The motivation behind this project was to understand which skills are the most demanded by employers, which offer the highest salaries, and ultimately, which are the most optimal skills to learn.

# Tools I Used
- **SQL:** Core language used for querying and analyzing the data.
- **RDBMS:** PostgreSQL used as the database management system.
- **Visual Studio Code:** For script development and repository management.

# The Analysis
The analysis explores several key areas across five main queries. Main operations and techniques used include:
- Data aggregation and filtering (GROUP BY, HAVING)
- Combining datasets using various JOINs (connecting `job_postings_fact`, `skills_dim`, and `company_dim`)
- Complex query structuring using Common Table Expressions (CTEs)

*Key questions answered in this project:*
1. What are the top-paying jobs?
2. What skills are required for the top-paying jobs?
3. What are the most in-demand skills?
4. What are the top-paying skills?
5. What are the most optimal skills to learn (high demand AND high paying)?

*Example query structure used in the project (finding top skills):*
```sql
SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
GROUP BY 
    skills
ORDER BY 
    demand_count DESC
LIMIT 5;
```

# What I Learned
Throughout this project, I improved my technical skills and analytical thinking. Specifically, I learned how to:
- Write efficient and optimized SQL queries combining multiple fact and dimension tables.
- Use advanced SQL features like Window Functions, CTEs, and CASE expressions.
- Translate abstract career questions into concrete data queries.
- Effectively structure and document a data analysis workflow.

# Conclusions
The analysis revealed several key insights regarding the tech job market:
1. **Top Demanded Skills:** Foundational skills are consistently the most requested by employers across the majority of job postings.
2. **High-Paying Skills:** The highest salaries are often associated with niche, specialized, or advanced technical skills.
3. **The 'Optimal' Path:** By cross-referencing demand and salary, the analysis identifies the "optimal skills" – a strategic intersection showing where to focus learning efforts to maximize both employability and income potential.
