-- nbr of major that each student has declared
SELECT
    student.id,
    COUNT(department.ID)
FROM
    student,
    department,
    majorsin
WHERE
    majorsin.student_id = student.id
    AND majorsin.dept_id = department.id
GROUP BY
    student.id;