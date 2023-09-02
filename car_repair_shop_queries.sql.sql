-- Inserção de dados queries
USE car_repair_shop;

-- As tabelas do car_repair_shop
SHOW TABLES;

-- Inserir dados na tabela cliente (clients)
INSERT INTO clients (Fname, Lname, Date_of_birth, Address, Contact, email)
VALUES
 	('Allan', 'Silva', '1990-05-15', 'Rua João Teixeira Neto 225, São José dos Campos - SP', '(12) 95165-4321', 'alansilva@gmail.com'),
	('Carla', 'Abreu', '1993-03-25', 'Rua Mariana Corrêa 61, São Paulo - SP', '(11) 93712-3682', 'carla96@hotmail.com'),
	('Danilo', 'Oliveira', '1989-02-15', 'Rua Tomé Portes 651, São Paulo - SP', '(11) 94726-4689', 'daniloli@gmail.com'),
	('Flávia', 'Santos', '1980-11-23', 'Rua Cristóvão Pereira 1693, São Paulo - SP', '(11) 96741-9921', 'flavia_san@gmail.com'),
	('Hector', 'Pereira', '1975-10-23', 'Rua Thomás Deloney 416, São Paulo - SP', '(11) 91902-9428', 'hector1975@gmail.com'),
	('Julia', 'Medeiros', '1981-08-03', 'Rua Condé de Monsanto 54, Santana de Parnaíba - SP', '(11) 99812-0744', 'Julia95@gmail.com'),
    ('Luiz', 'Feitosa', '1990-02-14', 'Rua Carlos Gomes 803, São Paulo - SP', '(11) 98775-3219', 'luiz90f@gmail.com'),
	('Nathalia', 'Prado', '1978-10-28', 'Rua Álvaro Zuliani 134, Mauá - SP', '(11) 96533-2139', 'nathprado@gmail.com');

SELECT * FROM clients;

-- Inserir dados na tabela veículos (vehicles)        
INSERT INTO vehicles (id_clients, Vehicle_make, Vehicle_model, Model_year, License_plate, color, km)
VALUES
 	(1, 'Renault', 'Kwid', 2018, 'ABC1234', 'vermelho Fogo', 38505),
	(2, 'Volkswagen', 'Gol', 2020, 'XYZ5678', 'Cinza Platinum', 50100),
	(3, 'Honda', 'Civic', 2019, 'DEF9012', 'Preto Cristal', 28900),
	(4, 'Ford', 'Ka', 2018, 'GHI3456', 'Branco Ártico', 35110),
	(5, 'Nissan', 'Kicks', 2017, 'JKL7890', 'Branco Diamond', 70776),
	(6, 'Hyundai', 'HB20', 2022, 'MNO1234', 'Prata Sand', 25936),
    (7, 'Volkswagen', 'Polo', 2020, 'NOP2345', 'Prata Tungstênio', 41839),
    (8, 'Fiat', 'Strada', 2021, 'OQR4681', 'Preto Vulcano', 52129);
        
SELECT * FROM vehicles;
 
 -- Inserir dados na tabela serviços (services)  
 INSERT INTO services (Service_type, Service_price, Estimated_time)
VALUES
 	('Manutenção', 150.00, '60.00'),
	('Reparação', 450.00, 90.00),
	('Troca de Óleo', 50.00, 30.00),
	('Lavagem', 30.00, 45.00),
	('Revisão de Freios', 280.00, 90.00),
	('Alinhamento', 200.00, 60.00),
    ('Troca de Óleo', 70.00, 30.00),
    ('Revisão de Freios', 280.00, 90.00);
        
SELECT * FROM services;
   
-- Inserir dados na tabela funcionários (employees)    
INSERT INTO employees (employee_name, CPF, CNPJ, telephone, job_title, hire_date)
VALUES
 	('Bruno Martins', '12345678901', NULL, '(11) 98765-4321', 'Mecânico', '2021-08-31'),
	('Daniel Santos', '98765432781', NULL, '(11) 92345-6789', 'Atendente', '2022-07-15'),
	('Fábio Toretto', NULL, '45678912301346', '(11) 91354-5658', 'Gerente, Mecânico', NULL),
	('Fernanda Toretto', '83874766601', NULL, '(11) 98768-4920', 'Eletricista Automotivo', NULL),
	('Henrique Pereira', '15243463501', NULL, '(11) 91323-5436', 'Funileiro', '2022-03-20'),
	('Juliana Souza', '42639304201', NULL, '(11) 91921-3245', 'Estoquista de Peças', '2023-02-02'),
	('Letícia Ferreira', '92837364504', NULL, '(11) 92539-4856', 'Pintor Automotivo, Mecânico', '2022-08-01'),
	('Nicolas Monteiro', '45546473809', NULL, DEFAULT, 'Lavador de Carros', '2023-05-20');

SELECT * FROM employees;

-- Inserir dados na tabela Fornecedores (suppliers)
INSERT INTO suppliers (id_employee, Supplier_name,  Suppliers_address, Contact_person, Contact_number)
VALUES 
	(1, 'Auto Peças', 'Jardim dos Moraes 936, Embu das Artes - SP', 'Ana Silva', '(11) 91232-3457'),
	(2, 'Peças Rápidas', 'Av. José Paris 456, Taboão da Serra - SP', 'Carlos Oliveira', '(11) 98276-5432'),
	(3, 'Auto Caeiro Peças', 'Rua João de Lima 789, São Paulo - SP', 'Mariana Costa', '(11) 93456-7424'),
	(4, 'Auto Peças Gouveia', 'Rua José da Silva 1011, Campinas - SP', 'Rafael Santos', '(19) 98746-5432'),
	(5, 'Peças Rangel', 'Av. Tiradentes 90, São Roque - SP', 'Patricia Rodrigues', '(11) 92245-5678'),
	(6, 'Auto Peças Serro', 'Rua Vitor Guisar 129, - Guarulhos - SP', 'Bruno Oliveira', '(11) 99826-5432'),
	(7, 'Auto Peças Kemel', 'Av. Kemel Addas 1071, São Paulo - SP', 'Isabela Santos', '(11) 98745-1521'),
    (8, 'Auto Peças Daniel', 'Rua Rangel de Lima 78, São Paulo - SP', 'Hector Gomes', '(11) 97858-2134');
        
SELECT * FROM suppliers;

-- Inserir dados na tabela Peças e Inventário (parts inventory)
INSERT INTO parts_inventory (id_supplier, Part_name, Part_description, Part_price, Expiration_date, Quantity_in_stock)
VALUES
    (1, 'Filtro de Óleo', 'Filtro de óleo para troca', 15.50, '2028-04-19', 100),
    (2, 'Pastilhas de Freio', 'Pastilhas de freio para substituição', 60.00, '2026-06-30', 50),
    (3, 'Bateria', 'Bateria para veículos', 120.00, '2029-01-15', 30),
    (4, 'Amortecedor Dianteiro', 'Amortecedor dianteiro para substituição', 85.00, '2028-09-30', 25),
    (5, 'Vela de Ignição', 'Vela de ignição para troca', 8.00, '2025-03-15', 200),
    (6, 'Filtro de Ar', 'Filtro de ar para substituição', 12.00, '2028-11-30', 150),
    (7, 'Correia Dentada', 'Correia dentada para substituição', 30.00, '2026-02-28', 80),
	(8, 'Lâmpada de Farol', 'Lâmpada de farol para reposição', 5.50, '2027-07-10', 120);

SELECT * FROM parts_inventory;

-- Inserir dados na tabela ordem de serviço (service order)
INSERT INTO service_order (id_client, id_vehicle, id_service, id_supplier, id_employee, service_date)
VALUES
	(1, 1, 1, 1, 1, '2023-09-03'),
	(2, 2, 2, 2, 2, '2023-06-10'),
	(3, 3, 3, 3, 3, '2023-06-16'),
	(4, 4, 4, 4, 4, '2023-06-20'),
	(5, 5, 5, 5, 5, '2023-07-10'),
	(6, 6, 6, 6, 6, '2023-07-13'),
	(7, 7, 7, 7, 7, '2023-07-15'),
	(8, 8, 8, 8, 8, '2023-07-20');

SELECT * FROM service_order;

-- Inserir dados na tabela ordem de Pagamentos (payments)
INSERT INTO payments (Payment_date, id_service_order, Amount, Payment_method)
VALUES
	('2023-06-10', 1, 150.00, 'Cartão de Crédito'),
	('2023-06-16', 2, 50.00, 'Dinheiro'),
	('2023-06-20', 3, 30.00, 'Cartão de Débito'),
	('2023-07-10', 4, 280.00, 'Transferência'),
	('2023-07-13', 5, 200.00, 'Cartão de Crédito'),
    ('2023-07-13', 6, 200.00, 'Cartão de Crédito'),
	('2023-07-15', 7, 70.00, 'Dinheiro'),
	('2023-07-20', 8, 280.00, 'Cartão de Crédito');
    
        
SELECT * FROM payments;

-- Calcula a idade dos clientes com base na data de nascimento
SELECT Fname, Lname, YEAR(CURDATE()) - YEAR(Date_of_birth) AS Age FROM clients
ORDER BY Age;

-- Veículos em ordem decrescente de quilometragem
SELECT c.km, c.Vehicle_make, c.Vehicle_model, c.color, c.Model_year, c.License_plate 
FROM vehicles c ORDER BY km DESC;

-- Quais são os serviços mais caros?
SELECT Service_type, Service_price
FROM services
ORDER BY Service_price DESC;

-- Recupera funcionários que são mecânicos na oficina
SELECT employee_name, job_title
FROM employees WHERE job_title LIKE '%Mecânico%';

-- Retornará uma lista de fornecedores que estão localizados em São Paulo.
SELECT Supplier_name, Suppliers_address, Contact_number
FROM suppliers
WHERE Suppliers_address LIKE '%São Paulo%';

-- Retornará todas as peças que têm menos de 50 unidades em estoque
SELECT Part_name, Quantity_in_stock
FROM parts_inventory
WHERE Quantity_in_stock < 50
ORDER BY Quantity_in_stock DESC;

-- Calcule o preço total de cada serviço realizado em uma ordem de serviço:
SELECT so.id_service_order, s.Service_type, SUM(s.Service_price) AS Total_price
FROM service_order so
JOIN services s ON so.id_service = s.id_service
GROUP BY so.id_service_order;

-- Qual é o tipo de serviço mais demorado?
SELECT Service_type, SUM(Estimated_time) AS total_tempo
FROM services
GROUP BY Service_type
ORDER BY total_tempo DESC;

-- Quais são os serviços mais caros realizados em veículos da marca 'Honda'?
SELECT s.Service_type, s.Service_price, v.Vehicle_make, v.Vehicle_model, v.License_plate
FROM service_order so
JOIN services s ON so.id_service = s.id_service
JOIN vehicles v ON so.id_vehicle = v.id_vehicle
WHERE v.Vehicle_make = 'Honda'
ORDER BY s.Service_price DESC;

-- Quais são os clientes que possuem um veículo da marca Volkswagen?
SELECT c.Fname, c.Lname, c.Address, c.Contact, c.email
FROM clients c
JOIN vehicles v
ON c.id_client = v.id_clients
WHERE v.Vehicle_make = 'Volkswagen';

-- Quais são os serviços mais solicitados pela oficina?
SELECT s.Service_type, COUNT(*) AS total_requests
FROM service_order so
JOIN services s
ON so.id_service = s.id_service
GROUP BY s.Service_type
ORDER BY total_requests DESC
LIMIT 10;

-- Quais são os serviços realizados em veículos com mais de 100.000 km?
SELECT sv.Service_type, v.Vehicle_make, v.Vehicle_model, License_plate, color, v.km
FROM service_order so
JOIN vehicles v ON so.id_vehicle = v.id_vehicle
JOIN services sv ON so.id_service = sv.id_service
WHERE v.km > 60000;

-- Quais são os funcionários, ordenados por nome, telefone e Cargo?
SELECT e.employee_name, telephone, job_title
FROM employees e
ORDER BY e.employee_name;
