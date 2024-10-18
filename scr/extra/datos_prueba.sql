-- Insertar roles en la tabla rol
INSERT INTO rol (nombre)
VALUES
('Usuario'),
('Usuario');

-- Insertar usuarios en la tabla usuario
INSERT INTO usuario (nombre, email, contraseña, id_rol)
VALUES
('Boris De Prada', 'boris@gmail.com', 'passw1', 1),
('Esteban Basilli', 'esteban@gmail.com', 'passw2', 1);

