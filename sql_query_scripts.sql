USE university_db_schema;

-- Average grade by each professor

SELECT 
    p.professors_id, 
    p.professors_first_name, 
    p.professors_last_name, 
    AVG(g.grade) AS average_grade
FROM 
    professors p
INNER JOIN 
    courses c 
ON 
    p.professors_id = c.courses_professor_id
INNER JOIN 
    grades g 
ON 
    c.courses_id = g.grades_courses_id
GROUP BY 
    p.professors_id, 
    p.professors_first_name, 
    p.professors_last_name;

-- Top grades for each student

SELECT 
    s.students_id, 
    s.students_first_name, 
    s.students_last_name, 
    MAX(g.grade) AS top_grade
FROM 
    students s
INNER JOIN 
    grades g 
ON 
    s.students_id = g.grades_students_id
GROUP BY 
    s.students_id, 
    s.students_first_name, 
    s.students_last_name;

-- Students sorted by courses

SELECT 
    s.students_id, 
    s.students_first_name, 
    s.students_last_name, 
    c.courses_name
FROM 
    students s
INNER JOIN 
    grades g 
ON 
    s.students_id = g.grades_students_id
INNER JOIN 
    courses c 
ON 
    g.grades_courses_id = c.courses_id
ORDER BY 
    c.courses_name, 
    s.students_id;

-- Course summary report

SELECT 
    c.courses_id, 
    c.courses_name, 
    AVG(g.grade) AS average_grade
FROM 
    courses c
JOIN 
    grades g 
ON 
    c.courses_id = g.grades_courses_id
GROUP BY 
    c.courses_id, 
    c.courses_name
ORDER BY 
    average_grade ASC;

-- Students & professors with the most courses in common

SELECT 
    s.students_first_name, 
    s.students_last_name, 
    p.professors_first_name, 
    p.professors_last_name, 
    COUNT(g.grades_courses_id) AS common_courses
FROM 
    students s
JOIN 
    grades g 
ON 
    s.students_id = g.grades_students_id
JOIN 
    courses c 
ON 
    g.grades_courses_id = c.courses_id
JOIN 
    professors p 
ON 
    c.courses_professor_id = p.professors_id
GROUP BY 
    s.students_id, 
    p.professors_id
HAVING 
    COUNT(g.grades_courses_id) > 1
ORDER BY 
    common_courses DESC
LIMIT 1;