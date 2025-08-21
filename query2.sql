-- Query 2
-- Find the students who scored less than 50% in the Linux couse

SELECT s.student_id, s.student_name, l.course_name, l.grade_obtained
FROM students s
JOIN linux_grades l ON s.student_id = l.student_id
WHERE l.grade_obtained < 50;