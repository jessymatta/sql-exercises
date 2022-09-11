SELECT
    department.id,
    COUNT(student.id)
FROM
    student,
    department,
    majorsin
WHERE
    majorsin.student_id = student.id
    AND majorsin.dept_id = department.id
GROUP BY
    department.id
HAVING
    COUNT(student.id) > 1;