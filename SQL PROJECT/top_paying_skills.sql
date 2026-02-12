SELECT
	skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact AS jpf
JOIN 
	skills_job_dim AS sjd On jpf.job_id = sjd.job_id
JOIN 
	skills_dim AS sd On sjd.skill_id = sd.skill_id
WHERE job_title_short = 'Data Analyst' AND salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY 
	avg_salary DESC
LIMIT 25;

/*
Analysis:
- Calculated the average annual salary per skill for Data Analyst roles.
- Joined job postings with skill mapping tables and ranked skills by highest average salary.

Key Insight:
Skills associated with machine learning, cloud infrastructure, and backend technologies
show the highest average salaries, indicating that Data Analyst roles requiring advanced
technical and engineering capabilities command premium compensation.
*/
