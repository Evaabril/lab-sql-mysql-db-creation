-- Challenge 2 - Create the Database and Tables

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;


CREATE TABLE IF NOT EXISTS cars_bbdd(
id_car INT NOT NULL AUTO_INCREMENT,
VIN CHAR (17) NOT NULL,
manufacturer VARCHAR (50) NOT NULL,
model  VARCHAR (50) NOT NULL,
year_c DATE,
colour VARCHAR (50),
PRIMARY KEY (id_car)
);

ALTER TABLE cars_bbdd
MODIFY COLUMN year_c year

CREATE TABLE IF NOT EXISTS customer(
id INT NOT NULL AUTO_INCREMENT,
id_customer INT NOT NULL,
customer_name VARCHAR (50) NOT NULL,
phone VARCHAR (50) NOT NULL,
email  VARCHAR (50) NOT NULL,
address VARCHAR(100)NOT NULL,
city VARCHAR (50)NOT NULL,
estado_provincia VARCHAR (50)NOT NULL,
pais VARCHAR (30)NOT NULL,
zip INT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS sales_person(
id INT NOT NULL AUTO_INCREMENT,
staff_id INT NOT NULL,
staff_name VARCHAR (50) NOT NULL,
store VARCHAR (100)NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS invoice(
id INT NOT NULL AUTO_INCREMENT,
invoice_number INT NOT NULL,
date_inv DATE,
id_car INT NOT NULL,
id_customer INT NOT NULL,
staff_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_car) REFERENCES cars_bbdd (id_car),
FOREIGN KEY (id_customer) REFERENCES customer (id),
FOREIGN KEY (staff_id) REFERENCES sales_person (id)
);

SELECT *
FROM cars_bbdd;

SELECT *
FROM customer;

SELECT *
FROM sales_person;

SELECT *
FROM invoice;