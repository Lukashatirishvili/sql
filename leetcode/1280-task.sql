SELECT 
s.student_id,
s.student_name,
sb.subject_name, 
COUNT(e.student_id) AS attended_exams
FROM Students s
CROSS JOIN Subject sb
LEFT JOIN Examinations e
ON s.student_id = e.student_id AND sb.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sb.subject_name
ORDER BY s.student_id, sb.subject_name;

-- https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50