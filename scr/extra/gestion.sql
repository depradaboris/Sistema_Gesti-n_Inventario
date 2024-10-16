CREATE DATABASE IF NOT EXISTS gestion_inventario
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE gestion_inventario;

CREATE TABLE rol (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL -- 'Administrador' o 'Usuario'
);

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    contraseña VARCHAR(100) NOT NULL,
    id_rol INT NOT NULL, 
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    id_categoria INT, -- Clave foránea hacia la tabla categoría
    id_usuario INT NOT NULL, -- Clave foránea hacia la tabla usuario (creador o gestor del producto)
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE proveedor (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE producto_proveedor (
    id_proveedor INT NOT NULL,
    id_producto INT NOT NULL,
    PRIMARY KEY (id_proveedor, id_producto),
    FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE orden_compra (
    id_orden INT AUTO_INCREMENT PRIMARY KEY,
    fecha_pedido DATE NOT NULL,
    fecha_recepcion DATE,
    estado VARCHAR(50) NOT NULL, -- 'Pendiente', 'Completado'
    id_proveedor INT, -- Clave foránea hacia la tabla proveedor
    id_usuario INT NOT NULL, -- Clave foránea hacia la tabla usuario
    FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE detalle_orden (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_orden INT NOT NULL, -- Clave foránea hacia la tabla orden_compra
    id_producto INT, -- Clave foránea hacia la tabla producto
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_orden) REFERENCES orden_compra(id_orden)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
