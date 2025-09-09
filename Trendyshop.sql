CREATE DATABASE Trendyshop;
USE Trendyshop;

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(255),
    edad_cliente INT,
    genero_cliente VARCHAR(50),
    ciudad_cliente VARCHAR(100)
);

CREATE TABLE Productos (
    id_producto INT PRIMARY KEY,
    nombre_producto VARCHAR(255),
    categoria_producto VARCHAR(100),
    marca_producto VARCHAR(100),
    precio_unitario DECIMAL(10, 2)
);

CREATE TABLE Ventas (
    id_transaccion INT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    cantidad INT,
    fecha_venta DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);