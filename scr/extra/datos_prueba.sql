-- Insertar roles en la tabla rol
INSERT INTO rol (nombre)
VALUES
('Usuario'),
('Usuario'),
('Usuario');

-- Insertar usuarios en la tabla usuario
INSERT INTO usuario (nombre, email, contraseña, id_rol)
VALUES
('Boris De Prada', 'boris@gmail.com', 'scrypt:32768:8:1$HPCQZteVoQKJ8Q1v$9e117ab8f6a723e31f0208626ca120131c01a7d6c4a933c28d1f33119f6ec9897df3e0544641b5bdd266f91244adfade718d0bfe2f34ff4bfcde14bf4007fa1f', 1),
('Dana Fernandez', 'dana@gmail.com', 'scrypt:32768:8:1$RZXS2y5ACDbAgnm6$a6829ab21732a5adbc00ed3c9d52bc8ab2b6c6297f9ee2c1efdc9da9d172018eb057533409cbb66ce3160296ef24f3ecd4cd42e5c95e296af3f3f25ad7ae13e2', 1),
('Esteban Basilli', 'esteban@gmail.com', 'scrypt:32768:8:1$OtvpyJnf7PRkey4z$1d52f19835da128cbe05d87af1b4873444dd7a3fa8a5d70c05cb641cfa3c67755baab387c07b61cd567416018a1491410f0ca6e6421ecaf56342957fe75ccc94', 1);


