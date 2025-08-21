

--calculate average linux and python grades side by side
SELECT 

(SELECT AVG(grade_obtained) FROM linux_grades) AS linux_avg,
(SELECT AVG(grade_obtained) FROM python_grades) AS python_avg



