SELECT
    course.crn,
    start_time
FROM
    course
WHERE
    start_time = (
        SELECT
            MIN(start_time)
        FROM
            course
    );