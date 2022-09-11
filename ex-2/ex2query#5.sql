SELECT
    student.name
FROM
    student
WHERE
    student.id NOT IN(
        SELECT
            student_id
        FROM
            enrolled
    );