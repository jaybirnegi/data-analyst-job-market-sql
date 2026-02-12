WITH skills_demand AS (
	SELECT
		sd.skill_id,
		sd.skills,
		count(sd.skill_id) AS 'demand'
	FROM 
		job_postings_fact AS jpf
	JOIN 
		skills_job_dim AS sjd On jpf.job_id = sjd.job_id
	JOIN 
		skills_dim AS sd On sjd.skill_id = sd.skill_id
	WHERE job_title_short = 'Data Analyst' AND salary_year_avg IS NOT NULL
	GROUP BY sd.skill_id, sd.skills
    ), avg_salary AS (
	SELECT
		sd.skill_id,
		ROUND(AVG(salary_year_avg), 0) AS avg_salary
	FROM job_postings_fact AS jpf
	JOIN 
		skills_job_dim AS sjd On jpf.job_id = sjd.job_id
	JOIN 
		skills_dim AS sd On sjd.skill_id = sd.skill_id
	WHERE job_title_short = 'Data Analyst' AND salary_year_avg IS NOT NULL
	GROUP BY sd.skill_id)
    
SELECT skills_dim.skill_id,
		skills_dim.skills,
        skills_demand,
        avg_salary
FROM skills_demand
JOIN avg_salary ON demand.skill_id = avg_salary.skill_id;




WITH skills_demand AS (
    SELECT
        sd.skill_id,
        sd.skills,
        COUNT(*) AS demand
    FROM job_postings_fact jpf
    JOIN skills_job_dim sjd 
        ON jpf.job_id = sjd.job_id
    JOIN skills_dim sd 
        ON sjd.skill_id = sd.skill_id
    WHERE jpf.job_title_short = 'Data Analyst'
      AND jpf.salary_year_avg IS NOT NULL
    GROUP BY sd.skill_id, sd.skills
),

avg_salary AS (
    SELECT
        sjd.skill_id,
        ROUND(AVG(jpf.salary_year_avg), 0) AS avg_salary
    FROM job_postings_fact jpf
    JOIN skills_job_dim sjd 
        ON jpf.job_id = sjd.job_id
    WHERE jpf.job_title_short = 'Data Analyst'
      AND jpf.salary_year_avg IS NOT NULL
    GROUP BY sjd.skill_id
)

SELECT 
    sd.skill_id,
    sd.skills,
    sd.demand,
    a.avg_salary
FROM skills_demand sd
JOIN avg_salary a 
    ON sd.skill_id = a.skill_id
ORDER BY demand DESC, a.avg_salary DESC
LIMIT 5;
