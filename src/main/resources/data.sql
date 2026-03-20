--- Inserts para pruebas manuales ------------------------------------------------

-- limpiar datos
DELETE FROM teachers;
DELETE FROM users;
DELETE FROM persons;
DELETE FROM persons;

-- Insertar Personas
INSERT INTO persons (dni, first_name, last_name) VALUES 
(10000000, 'Admin', 'Admin'),
(11111111, 'Fran', 'P'),
(22222222, 'Agus', 'H'),
(33333333, 'Adrian', 'B'),
(44444444, 'Jose', 'M'),
(55555555, 'Hose', 'Ignacion Mendez'),
(66666666, 'Santiago', 'Hernandez'),
(77777777, 'Francisco', 'Franco P');

-- Insertar Usuarios de login
    -- Todos con contraseña hasehada "admin"
INSERT INTO users (name, password, is_admin) VALUES 
('admin', '$2a$10$8uG3r/WPfQn6IbwQm.d0peKotH8Wt49OaDjPcjVQplM/6TYyUiVhq', 1),
('fran', '$2a$10$8uG3r/WPfQn6IbwQm.d0peKotH8Wt49OaDjPcjVQplM/6TYyUiVhq', 0),
('agus', '$2a$10$8uG3r/WPfQn6IbwQm.d0peKotH8Wt49OaDjPcjVQplM/6TYyUiVhq', 1),
('adrian', '$2a$10$8uG3r/WPfQn6IbwQm.d0peKotH8Wt49OaDjPcjVQplM/6TYyUiVhq', 0),
('jose', '$2a$10$8uG3r/WPfQn6IbwQm.d0peKotH8Wt49OaDjPcjVQplM/6TYyUiVhq', 0),
('hose', '$2a$10$8uG3r/WPfQn6IbwQm.d0peKotH8Wt49OaDjPcjVQplM/6TYyUiVhq', 0),
('santiago', '$2a$10$8uG3r/WPfQn6IbwQm.d0peKotH8Wt49OaDjPcjVQplM/6TYyUiVhq', 0),
('francisco', '$2a$10$8uG3r/WPfQn6IbwQm.d0peKotH8Wt49OaDjPcjVQplM/6TYyUiVhq', 0);


-- Insertar profesores
INSERT INTO teachers (person_id, degree, email) 
VALUES (2, 'LICENCIATURA', 'fran@cs.com');

INSERT INTO teachers (person_id, degree, email) 
VALUES (6, 'LICENCIATURA', 'hose@cs.com');

INSERT INTO teachers (person_id, degree, email) 
VALUES (7, 'LICENCIATURA', 'santiago@cs.com');


-- INsertar materias
INSERT INTO subjects (code, name, responsible_id) VALUES 
(101, 'Programación I', 1),
(102, 'Ingeniería de Software I', 3),
(103, 'Sistemas Operativos', 2);
