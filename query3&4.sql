#Query 3: Find students who took only one course (either Linux or Python, not both).
SELECT s.student_id, s.student_name, 'Linux Only' AS course_status
FROM students s
JOIN linux_grades l ON s.student_id = l.student_id
WHERE s.student_id NOT IN (SELECT student_id FROM python_grades)

UNION

SELECT s.student_id, s.student_name, 'Python Only' AS course_status
FROM students s
JOIN python_grades p ON s.student_id = p.student_id
WHERE s.student_id NOT IN (SELECT student_id FROM linux_grades);

#Query 4: Find students who took both courses (Linux and Python).
SELECT DISTINCT s.student_id, s.student_name
FROM students s
JOIN linux_grades l ON s.student_id = l.student_id
JOIN python_grades p ON s.student_id = p.student_id;