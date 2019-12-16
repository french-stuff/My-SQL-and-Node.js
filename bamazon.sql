USE bamazon;

CREATE DATABASE bamazon_db;


CREATE TABLE products (
item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(45) NULL,
department_name VARCHAR(45) NULL,
price DEC(40,3) NULL,
stock_quantity 	INT(40) NULL,
PRIMARY KEY (item_id)
);

INSERT INTO products
(product_name,department_name,price,stock_quantity)
VALUES ("Black Cap", "Headwear", "24", "30");

INSERT INTO products
(product_name,department_name,price,stock_quantity)
VALUES ("Adidas Men's Ultra Boost", "Footwear", "130", "10");

INSERT INTO products
(product_name,department_name,price,stock_quantity)
VALUES ("Adidas Women's Ultra Boost", "Footwear", "115", "20");

INSERT INTO products
(product_name,department_name,price,stock_quantity)
VALUES ("Apple Watch Black Leather Band", "Accessories", "10", "18");

INSERT INTO products
(product_name,department_name,price,stock_quantity)
VALUES ("iPhone 11 Pro Black Case", "Cellphone Accessories", "20", "10");

INSERT INTO products
(product_name,department_name,price,stock_quantity)
VALUES ("iPhone 11 Pro Max Black Case", "Cellphone Accessories", "23", "8");

INSERT INTO products
(product_name,department_name,price,stock_quantity)
VALUES ("Bath & Body Works Frozen Lake Candle", "Home and Kitchen", "24", "32");

INSERT INTO products
(product_name,department_name,price,stock_quantity)
VALUES ("Star Wars Lego Baby Yoda ", "Toys", "54", "5");

INSERT INTO products
(product_name,department_name,price,stock_quantity)
VALUES ("Baby Yoda Plush Toy", "Toy", "30", "4");

INSERT INTO products
(product_name,department_name,price,stock_quantity)
VALUES ("Wireless Numeric Keyboard", "Technology", "15", "25");