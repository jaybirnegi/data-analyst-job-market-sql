	
    
WITH top_paying_jobs AS (    
    SELECT 
		job_id, 
		job_title, 
		salary_year_avg,
		name As company_name
	FROM 
		job_postings_fact
	JOIN company_dim On job_postings_fact.company_id = company_dim.company_id
	WHERE 
		job_title_Short = 'Data Analyst' AND 
		job_location = 'Anywhere'
	ORDER BY 
		salary_year_avg DESC 
	LIMIT 10)
    
select top_paying_jobs.*,
	skills
FROM 
	top_paying_jobs
JOIN 
	skills_job_dim On top_paying_jobs.job_id = skills_job_dim.job_id
JOIN 
	skills_dim On skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY 
	salary_year_avg DESC
LIMIT 10;

/*
Breakdown:
- Filtered job postings to include only remote Data Analyst roles with salary data.
- Selected the highest-paying positions based on annual salary.
- Joined job postings with skill data to identify required skills.
- Counted skill frequency across top-paying jobs.

Result:
- SQL and Python appear most frequently in high-paying remote Data Analyst roles.
- Tableau and Power BI are the next most common tools.
- Higher salaries are associated with a combination of technical and visualization skills.
*/
