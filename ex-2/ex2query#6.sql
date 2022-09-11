SELECT
    COUNT(student.name)
FROM
    student,
    course,
    enrolled,
    majorsin,
    department
WHERE
    enrolled.student_id = student.id
    AND enrolled.course_crn = course.crn
    AND majorsin.student_id = student.id
    AND majorsin.dept_id = department.id
    AND department.name = "CS"
    AND course.name = 'CSC275';