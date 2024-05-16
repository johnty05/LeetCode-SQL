select pr.project_id, round(avg(em.experience_years),2) as average_years from Project pr left join Employee em on pr.employee_id = em.employee_id group by pr.project_id
