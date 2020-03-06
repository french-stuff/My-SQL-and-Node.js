DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

use bamazon_db;


CREATE TABLE products (
item_id INT(10) AUTO_INCREMENT NOT NULL,
product_name VARCHAR(45) NULL,
department_name VARCHAR(100) NULL,
price DEC(40,3),
stock_quantity 	INT(40) NULL,
PRIMARY KEY (item_id)
);

alter table products auto_increment = 1000;

use bamazon_db;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iPads", "Electronics", 300.00, 30),
       ("Apple Watch", "Electronics", 350.00, 35),
       ("Apple TV", "Electronics", 150.00, 20),
       ("Adidas Men's Ultra Boost", "Footwear", 130.50, 10),
       ("Adidas Women's Ultra Boost", "Footwear", 115.00, 20),
       ("Star Wars Lego Baby Yoda ", "Toys", 100.30, 5),
       ("Baby Yoda Plush Toy", "Toys", 50.00, 4),
       ("iPhone 11 Pro Black Case", "Cellphone Accessories", 15.50, 5),
       ("iPhone 11 Pro Max Black Case", "Cellphone Accessories", 23.00, 8),
       ("Bath & Body Works Frozen Lake Candle", "Home and Kitchen", 24.00, 15);


ALTER TABLE products ADD product_sales DEC(40,3);
ALTER TABLE products ALTER product_sales SET DEFAULT 0.00;

CREATE TABLE departments (
department_id INT(10) AUTO_INCREMENT NOT NULL,
department_name VARCHAR(50),
over_head_costs INT(10),
UNIQUE (department_name),
PRIMARY KEY (department_id)
);

ALTER TABLE departments AUTO_INCREMENT = 100;

INSERT INTO departments (department_name) SELECT DISTINCT(department_name) FROM products;

ALTER TABLE departments MODIFY COLUMN over_head_costs DEC(40,3);

UPDATE products SET product_sales = 0.00;
UPDATE products SET stock_quantity = 12 where item_id = 1006;

SELECT * FROM products;
SELECT * FROM departments;


 


 


 


 


 


 