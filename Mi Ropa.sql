CREATE DATABASE Mi_Ropa

USE Mi_Ropa 



CREATE TABLE Calzado(
    ID_Calzado INT IDENTITY(1,1) PRIMARY KEY,
    Talla DECIMAL(3,1) NOT NULL,
    Marca VARCHAR(50) NULL,
    Color VARCHAR(50) NOT NULL,
    Tipo_de_calzado VARCHAR(50) NOT NULL
);

SELECT * FROM Calzado;

INSERT INTO Calzado (Talla, Marca, Color, Tipo_de_calzado)
VALUES 
(9.2, 'Pumas', 'Rojo con negro', 'Zapatos de Futbol'),
(12.0, 'No tiene', 'Negro', 'Tenis'),
(13.5, 'Nike', 'Azul', 'Tenis'),
(9.5, 'Adidas', 'Gris', 'Zapatos'),
(10.4, 'Joma', 'Verde', 'Zapatos de Futbol');

UPDATE Calzado
SET Color = 'Negro'
WHERE ID_Calzado = 1;

UPDATE Calzado
SET Talla = '11.2'
WHERE ID_Calzado = 1;

DELETE Calzado
WHERE ID_Calzado = 4;

SELECT * FROM Calzado
ORDER BY Talla ASC;

SELECT * FROM Calzado
ORDER BY Talla DESC;



CREATE TABLE Tshirt(
    ID_Tshirt INT IDENTITY(1,1) PRIMARY KEY,
    Talla VARCHAR(10) NOT NULL,
    Marca VARCHAR(50) NULL,
    Color VARCHAR(50) NOT NULL,
    Tipo_de_tshirt VARCHAR(50) NOT NULL
);

SELECT * FROM Tshirt

INSERT INTO Tshirt (Talla, Marca, Color, Tipo_de_tshirt)
VALUES 
('M', 'Adidas', 'Azul con negro', 'Deportivo'),
('L', 'Sin Marca', 'Gris', 'Para salir'),
('M', 'FC Barcelona', 'Rojo con Azul', 'Deportivo'),
('L', 'Real Madrid', 'Blanco', 'Deportivo'),
('XL', 'Sin Marca', 'Verde', 'Para salir');

UPDATE Tshirt
SET Color = 'Negro'
WHERE ID_Tshirt = 1;

UPDATE Tshirt
SET Talla = 'L'
WHERE ID_Tshirt = 3;

DELETE Tshirt
WHERE ID_Tshirt = 2;

SELECT * FROM Tshirt
ORDER BY Talla ASC;

SELECT * FROM Tshirt
ORDER BY Talla DESC;


CREATE TABLE Pantalones(
    ID_Pantalon INT IDENTITY(1,1) PRIMARY KEY,
    Talla VARCHAR(10) NOT NULL,
    Marca VARCHAR(50) NULL,
    Color VARCHAR(50) NOT NULL,
    Tipo_de_pantalon VARCHAR(50) NOT NULL
);

SELECT * FROM Pantalones

INSERT INTO Pantalones (Talla, Marca, Color, Tipo_de_pantalon)
VALUES 
('32', 'Sin Marca', 'Azul', 'Jeans'),
('36', 'Sin Marca', 'Negro', 'Jeans'),
('28', 'Sin Marca', 'Azul Marino', 'Formal de Tela'),
('16', 'Sin Marca', 'Blanco', 'Jeans'),
('38', 'Sin Marca', 'Negro', 'Formal de Tela');

UPDATE Pantalones
SET Color = 'Azul'
WHERE ID_Pantalon = 2;

UPDATE Pantalones
SET Tipo_de_pantalon = 'Jeans'
WHERE ID_Pantalon = 3;

DELETE Pantalones
WHERE ID_Pantalon = 1;

SELECT * FROM Pantalones
ORDER BY Talla ASC;

SELECT * FROM Pantalones
ORDER BY Talla DESC;



CREATE TABLE Camisas(
    ID_Camisa INT IDENTITY(1,1) PRIMARY KEY,
    Talla VARCHAR(10) NOT NULL,
    Marca VARCHAR(50) NULL,
    Color VARCHAR(50) NOT NULL,
    Tipo_de_camisa VARCHAR(50) NOT NULL
);

SELECT * FROM Camisas

INSERT INTO Camisas (Talla, Marca, Color, Tipo_de_camisa)
VALUES
('16', 'Sin Marca', 'Blanca', 'Formal'),
('S', 'Sin Marca', 'Negro', 'Formal'),
('XL', 'Sin Marca', 'Rosado', 'Semi Formal'),
('18', 'Sin Marca', 'Azul', 'Formal');

UPDATE Camisas
SET Color = 'Blanco'
WHERE ID_Camisa = 2;

UPDATE Camisas
SET Talla = 'M'
WHERE ID_Camisa = 3;

DELETE Camisas
WHERE ID_Camisa = 3;

SELECT * FROM Camisas
ORDER BY Talla ASC;

SELECT * FROM Camisas
ORDER BY Talla DESC;



SELECT  Camisas.Tipo_de_camisa, Pantalones.Tipo_de_pantalon
FROM Camisas
JOIN Pantalones
ON Camisas.ID_Camisa = Pantalones.ID_Pantalon



SELECT Calzado.Marca, Tshirt.Color
FROM Calzado
JOIN Tshirt
ON Calzado.ID_Calzado = Tshirt.ID_Tshirt;



SELECT Calzado.Tipo_de_calzado, Pantalones.Tipo_de_pantalon
FROM Calzado
JOIN Pantalones
ON Calzado.ID_Calzado = Pantalones.ID_Pantalon;



SELECT Tshirt.Marca, Camisas.Tipo_de_camisa
FROM Tshirt
JOIN Camisas
ON Tshirt.ID_Tshirt = Camisas.ID_Camisa;

