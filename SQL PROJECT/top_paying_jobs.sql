SELECT 
	job_id, 
	job_title, 
    job_location,
    job_schedule_type,
    job_posted_date,
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
LIMIT 10;