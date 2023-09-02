-- Criação do banco de dados para uma oficina mecânica
CREATE DATABASE car_repair_shop;

USE car_repair_shop;

-- Criação da tabela clientes (clients)
CREATE TABLE clients (
	id_client INT NOT NULL AUTO_INCREMENT,
	Fname VARCHAR(10),
	Lname VARCHAR(20),
	Date_of_birth DATE,
    Address VARCHAR(80) NOT NULL,
	Contact VARCHAR(20) NOT NULL,
	email VARCHAR(80) NOT NULL,
    PRIMARY KEY (id_client)
);

-- Criação da tabela veículos (vehicles)
CREATE TABLE vehicles (
    id_vehicle INT NOT NULL AUTO_INCREMENT,
    id_clients INT NOT NULL,
    Vehicle_make VARCHAR(50),
    Vehicle_model VARCHAR(50),
    Model_year INT,
    License_plate VARCHAR(7),
	color VARCHAR(30),
    km DECIMAL(10, 2) NOT NULL,
   PRIMARY KEY ( id_vehicle),
   CONSTRAINT fk_vehicles_clients FOREIGN KEY (id_clients) REFERENCES clients (id_client),
   CONSTRAINT unique_license_plate UNIQUE (License_plate)
);

-- Criação da tabela serviços (services)
CREATE TABLE services (
	id_service INT NOT NULL AUTO_INCREMENT,
    Service_type ENUM('Manutenção', 'Reparação', 'Troca de Óleo', 'Revisão de Freios', 'Lavagem', 'Alinhamento') NOT NULL,
    Service_price DECIMAL(10,2) NOT NULL,
	Estimated_time  DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id_service)
);

-- Criação da tabela funcionários (employees)
CREATE TABLE employees (
  id_employee INT NOT NULL AUTO_INCREMENT,
  employee_name VARCHAR(30) NOT NULL,
  CPF CHAR(11),
  CNPJ CHAR(14),
  telephone VARCHAR(20) DEFAULT 'N/A',
  job_title VARCHAR(45) NOT NULL,
  hire_date DATE,
  PRIMARY KEY (id_employee),
  CONSTRAINT unique_cpf_employee UNIQUE (CPF),
  CONSTRAINT unique_cnpj_employee UNIQUE (CNPJ)
);

-- Criação da tabela Fornecedores (suppliers)
CREATE TABLE suppliers (
    id_supplier INT NOT NULL AUTO_INCREMENT,
    id_employee INT NOT NULL,
    Supplier_name VARCHAR(50) NOT NULL,
    Suppliers_address VARCHAR(90),
    Contact_person VARCHAR(30),
    Contact_number CHAR(25),
    PRIMARY KEY (id_supplier),
    CONSTRAINT fk_suppliers_employees FOREIGN KEY (id_employee) REFERENCES employees (id_employee)
);

-- Criação da tabela Peças e Inventário (parts inventory)
CREATE TABLE parts_inventory (
    id_part INT NOT NULL AUTO_INCREMENT,
	id_supplier INT NOT NULL,
    Part_name VARCHAR(45) NOT NULL,
    Part_description VARCHAR(255),
    Part_price DECIMAL(10,2) NOT NULL,
    Expiration_date DATE,
    Quantity_in_stock INT NOT NULL,
    PRIMARY KEY (id_part),
    CONSTRAINT fk_parts_inventory_supplier FOREIGN KEY (id_supplier) REFERENCES suppliers (id_supplier)
);

-- Criação da tabela ordem de serviço (Service order)
CREATE TABLE service_order (
  id_service_order INT NOT NULL AUTO_INCREMENT,
  id_client INT NOT NULL,
  id_vehicle INT NOT NULL,
  id_service INT NOT NULL,
  id_supplier INT NOT NULL,
  id_employee INT NOT NULL,
  service_date DATE NOT NULL,
  PRIMARY KEY (id_service_order),
  CONSTRAINT fk_service_order_client FOREIGN KEY (id_client) REFERENCES clients (id_client),
  CONSTRAINT fk_service_order_vehicle FOREIGN KEY (id_vehicle) REFERENCES vehicles (id_vehicle),
  CONSTRAINT fk_service_order_service FOREIGN KEY (id_service) REFERENCES services (id_service),
  CONSTRAINT fk_service_order_supplier FOREIGN KEY (id_supplier) REFERENCES suppliers (id_supplier),
  CONSTRAINT fk_service_order_employee FOREIGN KEY (id_employee) REFERENCES employees (id_employee)
);
  
  -- Criação da tabela Pagamentos (payments)
CREATE TABLE payments (
    id_payment INT NOT NULL AUTO_INCREMENT,
    Payment_date DATE,
    id_service_order INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    Payment_method ENUM('Dinheiro', 'Cartão de Crédito', 'Cartão de Débito', 'Transferência') NOT NULL,
    PRIMARY KEY (id_payment),
    CONSTRAINT fk_payments_service_order FOREIGN KEY (id_service_order) REFERENCES service_order (id_service_order)
);

