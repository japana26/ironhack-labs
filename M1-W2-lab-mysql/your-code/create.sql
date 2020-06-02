CREATE DATABASE lab_mysql;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
CREATE TABLE cars (car_id INT PRIMARY KEY AUTO_INCREMENT, VIN VARCHAR(20), 
manufacturer VARCHAR(30), model VARCHAR(30), color VARCHAR(30), production_year INT);

CREATE TABLE customers 
(cust_id INT PRIMARY KEY AUTO_INCREMENT, 
customer_name VARCHAR(50), phone VARCHAR(30), 
email VARCHAR(30), address VARCHAR(30), city VARCHAR(30), 
state VARCHAR(30), country VARCHAR(30), postal_Code INT);

CREATE TABLE staff (staff_id INT PRIMARY KEY AUTO_INCREMENT, staff_name VARCHAR(50), store VARCHAR(50));

CREATE TABLE invoices (invoice_id INT PRIMARY KEY AUTO_INCREMENT, 
invoice_number INT, invoice_date DATE, car_id INT, 
cust_id INT, staff_id INT, 
FOREIGN KEY (car_id) REFERENCES cars (car_id),
FOREIGN KEY (cust_id) REFERENCES customers (cust_id),
FOREIGN KEY (staff_id) REFERENCES staff (staff_id));