# Data Analyst Job Market Analysis (SQL)
## Overview

This repository contains a structured SQL analysis of the Data Analyst job market.  
The project explores salary trends, skill demand, and the relationship between required technical skills and compensation using a relational dataset of job postings.

The analysis was performed entirely in MySQL using multi-table joins, aggregations, filtering, and Common Table Expressions (CTEs).


## Dataset Structure

The database consists of four primary tables:

- job_postings_fact  
- company_dim  
- skills_dim  
- skills_job_dim  

These tables were joined to analyze how specific skills relate to job demand and salary outcomes.


## Analytical Focus

The project answers the following:

- Which Data Analyst roles offer the highest salaries?
- Which skills are most frequently required?
- Which skills are associated with higher average salaries?
- Which skills provide both strong demand and strong compensation?


## Top Skills by Demand

![Top Skills by Demand] 
<img width="630" height="470" alt="output" src="https://github.com/user-attachments/assets/bdbe0391-10b7-4694-940c-3a2d82124da1" />


SQL is the most frequently requested skill in Data Analyst roles.  
Excel and Python remain core analytical tools across postings.  
Visualization tools such as Tableau and Power BI also show consistent demand.

This indicates that foundational data querying and reporting skills remain central to the role.


## Top Paying Skills

![Top Paying Skills] 
<img width="3000" height="1800" alt="top_paying_skills" src="https://github.com/user-attachments/assets/4f848e9a-5e44-4210-be09-f8ee2152f281" />


Specialized technical skills show higher average salary ranges.  
Advanced and niche technologies tend to correlate with stronger compensation compared to general analytical tools.


## Demand vs Salary Comparison

![Optimal Skills by Demand] 
<img width="3000" height="1800" alt="optimal_skills_demand" src="https://github.com/user-attachments/assets/41d98552-9518-456a-aa8f-03b4b52dbc2e" />


When comparing demand and salary together, core analytical skills dominate in volume, while specialized technologies influence earning potential.

This comparison highlights the distinction between high-frequency skills and high-compensation skills.


## SQL Techniques Applied

- Multi-table INNER JOIN operations  
- GROUP BY and ORDER BY  
- Aggregate functions (COUNT, AVG)  
- Salary filtering and ranking  
- NULL handling  
- Common Table Expressions (CTEs)  
- Demand and compensation comparison  


## Conclusion

The analysis shows a clear separation between foundational skills that drive demand and specialized technologies that influence salary levels.

SQL, Excel, and Python form the base requirements for Data Analyst roles, while advanced technical tools tend to increase compensation potential.

This project demonstrates structured relational analysis using SQL to extract actionable insights from job market data.

