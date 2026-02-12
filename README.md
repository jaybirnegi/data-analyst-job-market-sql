# Data Analyst Job Market Analysis (SQL)
## Overview

This repository contains a structured SQL analysis of the Data Analyst job market.  
The project explores salary trends, skill demand, and the relationship between required technical skills and compensation using a relational dataset of job postings.

The analysis was performed entirely in MySQL using multi-table joins, aggregations, filtering, and Common Table Expressions (CTEs).

---

## Dataset Structure

The analysis is built on a normalized relational schema:

| Table Name            | Description |
|-----------------------|------------|
| job_postings_fact     | Core job posting data including title, location, and salary |
| company_dim           | Company information linked to job postings |
| skills_dim            | Master list of technical skills |
| skills_job_dim        | Bridge table connecting jobs to required skills |

The schema enables multi-table joins to analyze how specific skills influence demand and salary.

---

## Key Business Questions

- What are the highest paying Data Analyst roles?
- Which skills are most frequently required?
- Which skills are associated with higher average salaries?
- Which skills offer both high demand and strong compensation?
- 
---

## Top Skills by Demand

<img width="2352" height="1770" alt="top_skills_demand" src="https://github.com/user-attachments/assets/38447194-e6a5-48c8-8ee4-ee5f85919bdc" />


SQL is the most frequently requested skill in Data Analyst roles.  
Excel and Python remain core analytical tools across postings.  
Visualization tools such as Tableau and Power BI also show consistent demand.

This indicates that foundational data querying and reporting skills remain central to the role.

---

## Top Paying Skills

<img width="3000" height="1800" alt="top_paying_skills" src="https://github.com/user-attachments/assets/4f848e9a-5e44-4210-be09-f8ee2152f281" />


Specialized technical skills show higher average salary ranges.  
Advanced and niche technologies tend to correlate with stronger compensation compared to general analytical tools.

---

## Demand vs Salary Comparison
 
<img width="3000" height="1800" alt="optimal_skills_demand" src="https://github.com/user-attachments/assets/41d98552-9518-456a-aa8f-03b4b52dbc2e" />


When comparing demand and salary together, core analytical skills dominate in volume, while specialized technologies influence earning potential.

This comparison highlights the distinction between high-frequency skills and high-compensation skills.

---

## Summary of Findings

| Category                  | Insight |
|---------------------------|---------|
| Highest Demand Skill      | SQL |
| Core Analyst Stack        | SQL, Excel, Python |
| Salary-Driven Skills      | Advanced and specialized technologies |
| Market Pattern            | Foundational skills dominate demand; niche tools influence salary |

---

## SQL Techniques Applied

- Multi-table INNER JOIN operations  
- GROUP BY and ORDER BY  
- Aggregate functions (COUNT, AVG)  
- Salary filtering and ranking  
- NULL handling  
- Common Table Expressions (CTEs)  
- Demand and compensation comparison  

---

## Conclusion

The analysis identifies a clear market structure within Data Analyst roles:

- Core data querying and reporting tools are essential across most positions.
- Advanced technical skills influence earning potential.
- Skill demand and salary value operate on different dimensions.

This project demonstrates practical application of SQL for relational analysis, salary aggregation, and skill-based market evaluation.
