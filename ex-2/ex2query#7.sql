-- Find the number of CS students enrolled in any course
--Note that I understood the question in two ways, so I implemented them both
--First option: find the number of CS students enrolled in each course
SELECT
    course.crn,
    COUNT(enrolled.student_id)
FROM
    student,
    course,
    enrolled,
    department,
    majorsin
WHERE
    enrolled.student_id = student.id
    AND enrolled.course_crn = course.crn
    AND majorsin.student_id = student.id
    AND majorsin.dept_id = department.id
    AND department.name = "CS"
GROUP BY
    course.crn;

--Second option: find the total number of enrolled CS students (students who are enrolled in at least one course)
SELECT
    COUNT(student.name)
FROM
    student,
    majorsin,
    department
WHERE
    majorsin.student_id = student.id
    AND majorsin.dept_id = department.id
    AND department.name = "CS"
    AND student.id IN(
        SELECT
            student_id
        FROM
            enrolled
    );