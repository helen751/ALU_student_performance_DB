-- Finding the top student in the class across Linux and Python courses based on the average

SELECT 
    s.student_id, s.student_name, 
    lg.grade_obtained AS linux_grade, pg.grade_obtained AS python_grade, /*linux and python grades with aliases*/
    ROUND((lg.grade_obtained + pg.grade_obtained)/2, 2) AS average_grade /*calculating the average grade and rounding to two decimal places */
FROM students s
-- join ensures that only students with both linux and python grades are included
JOIN linux_grades lg ON s.student_id = lg.student_id /*adding of linux grades to each student based on their student id*/
JOIN python_grades pg ON s.student_id = pg.student_id /*adding of python grades to each student based on their student id*/

ORDER BY average_grade DESC  /*Arranges students from highest to lowest*/

LIMIT 1; -- Limits the list to only the top student