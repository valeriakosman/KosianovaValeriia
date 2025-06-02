create database kosianova_dz27;
use kosianova_dz27;
create table car_brands (
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL
);
CREATE TABLE car_models (
id INT PRIMARY KEY AUTO_INCREMENT,
carBrandId INT NOT NULL,
title VARCHAR(100) NOT NULL,
FOREIGN KEY (carBrandId) REFERENCES car_brands(id)
);
CREATE TABLE users (
id INT PRIMARY KEY AUTO_INCREMENT,
firstName VARCHAR(100) NOT NULL,
lastName VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
password VARCHAR(100) NOT NULL
);
CREATE TABLE cars (
id INT PRIMARY KEY AUTO_INCREMENT,
userId INT NOT NULL,
carBrandId INT NOT NULL,
carModelId INT NOT NULL,
mileage INT NOT NULL,
initialMilleage INT NOT NULL,
FOREIGN KEY (userId) REFERENCES users(id),
FOREIGN KEY (carBrandId) REFERENCES car_brands(id),
FOREIGN KEY (carModelId) REFERENCES car_models(id)
);
INSERT INTO car_brands (title) VALUES
('Audi'),
('BMW'),
('Ford'),
('Porsche'),
('Fiat');
INSERT INTO car_models (carBrandId, title) VALUES
(1, 'TT'),
(1, 'R8'),
(1, 'Q7'),
(1, 'A6'),
(1, 'A8'),
(2, '3'),
(2, '5'),
(2, 'X5'),
(2, 'X6'),
(2, 'Z3'),
(3, 'Fiesta'),
(3, 'Focus'),
(3, 'Fusion'),
(3, 'Mondeo'),
(3, 'Sierra'),
(4, '911'),
(4, 'Cayenne'),
(4, 'Panamera'),
(5, 'Palio'),
(5, 'Ducato'),
(5, 'Panda'),
(5, 'Punto'),
(5, 'Scudo');
INSERT INTO users (firstName, lastName, email, password) VALUES
('Valeria', 'Kosianova', 'kosman@example.com', '20482048'),
('Dmitriy', 'Ovcharenko', 'ovcharenko@example.com', 'privet0102'),
('Diana', 'Mamedova', 'diana@example.com', 'qwerty2025'),
('Denis', 'Ozdemir', 'ozdemir@example.com', 'balyavanagalya1903'),
('ALexei', 'Bondar', 'alex@example.com', '666x666');
INSERT INTO cars (userId, carBrandId, carModelId, mileage, initialMilleage) VALUES
-- Valeria (userId = 1)
(1, 1, 1, 21928, 0),    -- Audi TT
(1, 2, 2, 31091, 10000),-- BMW 5
(1, 3, 4, 193544, 20000),-- Ford Mondeo
-- Dmitriy (userId = 2)
(2, 2, 3, 87627, 20000),-- BMW X5
(2, 3, 1, 345654, 5000),  -- Ford Fiesta
(2, 4, 9, 23678, 0),     -- Porsche Panamera
-- Diana (userId = 3)
(3, 3, 2, 226789, 10000), -- Ford Focus
(3, 5, 4, 87324, 20000), -- Fiat Punto
(3, 1, 5, 53001, 5000),  -- Audi A8
-- Denis (userId = 4)
(4, 4, 1, 42911, 0),     -- Porsche 911
(4, 1, 3, 80325, 0),     -- Audi Q7
(4, 2, 4, 89005, 10000), -- BMW X6
-- Alexei (userId = 5)
(5, 5, 3, 150905, 50000),-- Fiat Panda
(5, 3, 5, 71378, 10000), -- Ford Sierra
(5, 2, 5, 365473, 0);     -- BMW Z3