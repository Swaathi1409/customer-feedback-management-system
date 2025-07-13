-- Customer Feedback Management System Database Schema
-- Run this script to set up your database for deployment

-- Create database (if not exists)
CREATE DATABASE IF NOT EXISTS cfms;
USE cfms;

-- Customer table
CREATE TABLE Customer(
    cu_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    email VARCHAR(30),
    flat_no INT,
    street VARCHAR(20),
    city VARCHAR(20),
    pin_code INT
);

-- Admin table
CREATE TABLE admin(
    admin_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20),
    role VARCHAR(15),
    email VARCHAR(30)
);

-- Customer phone numbers
CREATE TABLE customer_ph(
    cu_id INT,
    phone_no VARCHAR(20),
    FOREIGN KEY (cu_id) REFERENCES customer(cu_id)
);

-- Admin phone numbers
CREATE TABLE admin_ph(
    admin_id INT,
    phone_no VARCHAR(20),
    FOREIGN KEY (admin_id) REFERENCES admin(admin_id)
);

-- Products table
CREATE TABLE product(
    prod_id INT NOT NULL PRIMARY KEY,
    prod_name VARCHAR(20)
);

-- Services table
CREATE TABLE service(
    s_id INT NOT NULL PRIMARY KEY,
    s_type VARCHAR(20)
);

-- Product ratings table
CREATE TABLE product_rat (
    cu_id INT,
    prod_id INT,
    created_date DATE,
    perform_rat INT,
    price_rat INT,
    p_qual_rat INT,
    design_rat INT,
    comfort_rat INT,
    use_again VARCHAR(3),
    overall_rating INT,
    comments VARCHAR(200),
    FOREIGN KEY (cu_id) REFERENCES customer(cu_id),
    FOREIGN KEY (prod_id) REFERENCES product(prod_id)
);

-- Service ratings table
CREATE TABLE service_rat (
    cu_id INT,
    s_id INT,
    created_date DATE,
    s_qual_rat INT,
    timeliness INT,
    communication INT,
    s_delivery INT,
    s_provider_knowledge INT,
    convenience INT,
    overall_rating INT,
    comments VARCHAR(200),
    FOREIGN KEY (cu_id) REFERENCES customer(cu_id),
    FOREIGN KEY (s_id) REFERENCES service(s_id)
);

-- Analytics table
CREATE TABLE analytics(
    type VARCHAR(10),
    p_count INT,
    n_count INT,
    avg_rat DECIMAL(5,2), 
    prod_id INT,
    s_id INT,
    FOREIGN KEY (prod_id) REFERENCES product(prod_id),
    FOREIGN KEY (s_id) REFERENCES service(s_id)
);

-- Insert sample customer data
INSERT INTO Customer (cu_id, flat_no, street, city, pin_code, name, email)
VALUES
(1, 101, 'MG Road', 'Chennai', 600001, 'Alice', 'alice@example.com'),
(2, 102, 'Beach Road', 'Mumbai', 400002, 'Bob', 'bob@example.com'),
(3, 202, 'Park Avenue', 'Chennai', 600002, 'Charlie', NULL),
(4, 105, 'Main Street', 'Bangalore', 560001, 'Diana', 'diana@example.com');

-- Insert customer phone numbers
INSERT INTO Customer_ph (cu_id, phone_no)
VALUES
(1, '9876543210'),
(2, '8765432101'),
(2, '8765432102'),
(3, '7654321098'),
(4, '6543210987');

-- Insert admin data
INSERT INTO Admin (admin_id, role, name, email)
VALUES
(1, 'Manager', 'John', 'john@example.com'),
(2, 'Admin', 'Alice', 'alice@company.com'),
(3, 'Manager', 'Bob', 'bob@example.com'),
(4, 'Developer', 'Charlie', 'charlie@company.com');

-- Insert admin phone numbers
INSERT INTO Admin_ph (admin_id, phone_no)
VALUES
(1, '9988776655'),
(2, '8877665544'),
(3, '7766554433'),
(4, '6655443322'),
(4, '6655443542');

-- Insert sample products
INSERT INTO product (prod_id, prod_name) VALUES
(100, 'Laptop'),
(200, 'Smartphone'),
(300, 'Headphones'),
(400, 'Smart Watch');

-- Insert sample services
INSERT INTO service (s_id, s_type) VALUES
(100, 'Repair'),
(200, 'Installation'),
(300, 'Consultation'),
(400, 'Training');

-- Initialize analytics table
INSERT INTO analytics (type, p_count, n_count, avg_rat, prod_id, s_id) VALUES
('product', 0, 0, 0, 100, NULL),
('product', 0, 0, 0, 200, NULL),
('product', 0, 0, 0, 300, NULL),
('product', 0, 0, 0, 400, NULL),
('service', 0, 0, 0, NULL, 100),
('service', 0, 0, 0, NULL, 200),
('service', 0, 0, 0, NULL, 300),
('service', 0, 0, 0, NULL, 400); 