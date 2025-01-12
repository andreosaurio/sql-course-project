USE university_db_schema;

INSERT INTO students (students_first_name, students_last_name, students_email)
VALUES 
    ('John', 'Doe', 'john.doe@example.com'),
    ('Jane', 'Smith', 'jane.smith@example.com'),
    ('Michael', 'Johnson', 'michael.johnson@example.com'),
    ('Emily', 'Davis', 'emily.davis@example.com'),
    ('David', 'Brown', 'david.brown@example.com'),
    ('Sarah', 'Miller', 'sarah.miller@example.com'),
    ('Chris', 'Wilson', 'chris.wilson@example.com'),
    ('Amanda', 'Moore', 'amanda.moore@example.com'),
    ('Joshua', 'Taylor', 'joshua.taylor@example.com'),
    ('Jessica', 'Anderson', 'jessica.anderson@example.com'),
    ('Matthew', 'Thomas', 'matthew.thomas@example.com'),
    ('Carlos', 'García', 'carlos.garcia@example.com'),
    ('María', 'Rodríguez', 'maria.rodriguez@example.com'),
    ('Luis', 'Martínez', 'luis.martinez@example.com'),
    ('Ana', 'Hernández', 'ana.hernandez@example.com'),
    ('José', 'López', 'jose.lopez@example.com'),
    ('Elena', 'González', 'elena.gonzalez@example.com'),
    ('Pedro', 'Pérez', 'pedro.perez@example.com'),
    ('Laura', 'Sánchez', 'laura.sanchez@example.com'),
    ('Javier', 'Ramírez', 'javier.ramirez@example.com'),
    ('Carmen', 'Torres', 'carmen.torres@example.com'),
    ('Daniel', 'Flores', 'daniel.flores@example.com'),
    ('Isabel', 'Rivera', 'isabel.rivera@example.com'),
    ('Miguel', 'Gómez', 'miguel.gomez@example.com'),
    ('Lucía', 'Díaz', 'lucia.diaz@example.com'),
    ('Francisco', 'Reyes', 'francisco.reyes@example.com'),
    ('Sofía', 'Cruz', 'sofia.cruz@example.com'),
    ('Diego', 'Ortiz', 'diego.ortiz@example.com'),
    ('Marta', 'Morales', 'marta.morales@example.com'),
    ('Álvaro', 'Vargas', 'alvaro.vargas@example.com'),
    ('Adriana', 'Ramos', 'adriana.ramos@example.com'),
    ('Andrés', 'Ruiz', 'andres.ruiz@example.com'),
    ('Natalia', 'Gutiérrez', 'natalia.gutierrez@example.com'),
    ('Santiago', 'Jiménez', 'santiago.jimenez@example.com'),
    ('Paula', 'Mendoza', 'paula.mendoza@example.com'),
    ('Fernando', 'Silva', 'fernando.silva@example.com'),
    ('Patricia', 'Castro', 'patricia.castro@example.com'),
    ('Gabriel', 'Romero', 'gabriel.romero@example.com'),
    ('Teresa', 'Suárez', 'teresa.suarez@example.com'),
    ('Juan', 'Santos', 'juan.santos@example.com'),
    ('Valeria', 'Ortega', 'valeria.ortega@example.com'),
    ('Ricardo', 'Delgado', 'ricardo.delgado@example.com'),
    ('Lorena', 'Pena', 'lorena.pena@example.com'),
    ('Oscar', 'Ferrer', 'oscar.ferrer@example.com'),
    ('Beatriz', 'Cabrera', 'beatriz.cabrera@example.com'),
    ('Mario', 'Cortes', 'mario.cortes@example.com'),
    ('Eva', 'Aguilar', 'eva.aguilar@example.com'),
    ('Hugo', 'Navarro', 'hugo.navarro@example.com'),
    ('Claudia', 'Herrera', 'claudia.herrera@example.com');
    
INSERT INTO professors (professors_first_name, professors_last_name, professors_email)
VALUES 
    ('Juan', 'Pérez', 'juan.perez@example.com'),
    ('María', 'González', 'maria.gonzalez@example.com'),
    ('Carlos', 'Rodríguez', 'carlos.rodriguez@example.com'),
    ('Ana', 'Martínez', 'ana.martinez@example.com'),
    ('Luis', 'López', 'luis.lopez@example.com'),
    ('Laura', 'Hernández', 'laura.hernandez@example.com'),
    ('José', 'García', 'jose.garcia@example.com'),
    ('Carmen', 'Sánchez', 'carmen.sanchez@example.com'),
    ('Miguel', 'Fernández', 'miguel.fernandez@example.com'),
    ('Elena', 'Ramírez', 'elena.ramirez@example.com');
    
INSERT INTO courses (courses_name, courses_code, courses_professor_id)
VALUES 
    ('Introducción a la Programación', '12345678', 1),
    ('Programación Orientada a Objetos', '23456789', 2),
    ('Estructuras de Datos', '34567890', 3),
    ('Algoritmos y Complejidad', '45678901', 4),
    ('Bases de Datos', '56789012', 5),
    ('Desarrollo Web', '67890123', 6),
    ('Programación en Python', '78901234', 7),
    ('Desarrollo de Aplicaciones Móviles', '89012345', 8),
    ('Ingeniería de Software', '90123456', 9),
    ('Programación en Java', '11223344', 10),
    ('Ciberseguridad', '22334455', 1),
    ('Inteligencia Artificial', '33445566', 2),
    ('Programación en C++', '44556677', 3),
    ('Sistemas Operativos', '55667788', 4),
    ('Redes de Computadoras', '66778899', 5),
    ('Programación en JavaScript', '77889900', 6),
    ('Computación en la Nube', '88990011', 7),
    ('Machine Learning', '99001122', 8);
    
INSERT INTO grades (grades_students_id, grades_courses_id, grade)
VALUES 
    (1, 1, 8.95),
    (2, 2, 7.63),
    (3, 3, 9.28),
    (4, 4, 8.82),
    (5, 5, 9.40),
    (6, 6, 7.84),
    (7, 7, 8.56),
    (8, 8, 9.15),
    (9, 9, 8.72),
    (10, 10, 9.00),
    (11, 11, 8.35),
    (12, 12, 7.97),
    (13, 13, 8.89),
    (14, 14, 8.60),
    (15, 15, 9.31),
    (16, 16, 8.05),
    (17, 17, 7.73),
    (18, 18, 8.96),
    (19, 1, 8.42),
    (20, 2, 9.23),
    (21, 3, 7.85),
    (22, 4, 8.97),
    (23, 5, 9.14),
    (24, 6, 7.68),
    (25, 7, 8.75),
    (26, 8, 9.05),
    (27, 9, 8.34),
    (28, 10, 9.18),
    (29, 11, 8.55),
    (30, 12, 7.92),
    (31, 13, 8.60),
    (32, 14, 8.87),
    (33, 15, 9.09),
    (34, 16, 7.88),
    (35, 17, 8.64),
    (36, 18, 9.07),
    (37, 1, 8.76),
    (38, 2, 7.95),
    (39, 3, 9.21),
    (40, 4, 8.68),
    (41, 5, 9.11),
    (42, 6, 7.78),
    (43, 7, 8.53),
    (44, 8, 9.04),
    (45, 9, 8.91),
    (46, 10, 8.79),
    (47, 11, 7.96),
    (48, 12, 8.71),
    (49, 13, 9.10),
    (1, 11, 8.50), 
    (2, 12, 7.75), 
    (3, 13, 8.90), 
    (4, 14, 8.60), 
    (5, 15, 9.20), 
    (6, 16, 8.10), 
    (7, 17, 8.80), 
    (8, 18, 9.00);