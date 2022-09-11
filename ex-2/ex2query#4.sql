SELECT
    DISTINCT course.crn
FROM
    student,
    department,
    majorsin,
    course,
    enrolled
WHERE
    majorsin.student_id = student.id
    AND majorsin.dept_id = department.id
    AND department.name = 'BIF'
    AND enrolled.student_id = student.id
    AND enrolled.course_crn = course.crn;