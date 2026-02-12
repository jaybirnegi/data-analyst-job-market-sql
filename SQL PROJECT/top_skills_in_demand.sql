SELECT
	skills,
    count(sd.skill_id) AS 'demand'
FROM 
	job_postings_fact AS jpf
JOIN 
	skills_job_dim AS sjd On jpf.job_id = sjd.job_id
JOIN 
	skills_dim AS sd On sjd.skill_id = sd.skill_id
WHERE job_title_short = 'Data Analyst'
GROUP BY skills
ORDER BY  demand DESC
LIMIT 10;