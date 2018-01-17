DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(
  item_id VARCHAR(10) not null,
  product_name VARCHAR(80) not null,
  department_name VARCHAR(80) not null, 
  price NUMERIC(5,2) not null,
  stock_quantity INT(4) not null
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("004S8F7", "Cards Against Humanity" ,"Card Games",  25.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("071G5HZ", "Monster Hunter: World" ,"Video Games",  59.88, 87);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("B078P49", "Apple Barrel Acrylic Paint Set","Arts, Crafts & Sewing",  18.07, 25);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("B073ZST", "Game of Thrones: Season 7 Blu-ray","Movies & TV",  34.99, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("B01ES34", "Retinol Cream Moisturizer","Beauty & Personal Care",  19.99, 17);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("054K593", "Dog Man and Cat Kid","Comic & Graphic Novels",  6.40, 52);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("B0759DD", "Digital Laser Infrared Thermometer","Industrial & Scientific",  25.99, 70);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("B013JLB", "Hamilton Original Broadway Cast Recording","CD & Vinyl",  18.99, 9);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("B06WW64", "Fujifilm Instax Mini 9","Camera & Photo",  55.61, 23);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (" B01L9DK", "Totes Clear Bubble Umbrella","Luggage & Travel Gear",  9.99, 78);

