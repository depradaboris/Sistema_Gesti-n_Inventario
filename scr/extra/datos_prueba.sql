-- Insertar roles en la tabla rol
INSERT INTO rol (nombre)
VALUES
('Administrador'),
('Usuario'),
('Usuario');

-- Insertar usuarios en la tabla usuario
INSERT INTO usuario (nombre, email, contraseña, id_rol)
VALUES
('Boris De Prada', 'boris@gmail.com', 'passw1', 1), -- Rol Administrador
('Esteban Basilli', 'esteban@gmail.com', 'passw2', 2), -- Rol Usuario
('Dana Fernández', 'dana@gmail.com', 'passw3', 3); -- Rol Usuario
