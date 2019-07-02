CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	item_id INTEGER (10) AUTO_INCREMENT NOT NULL,
	product_name VARCHAR (250) NOT NULL,
	department_name VARCHAR (250),
	price DECIMAL(10,2) NOT NULL,
	stock_quantity INTEGER (10) NOT NULL,
	product_sales DECIMAL (10,2) DEFAULT 0.00,
	PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Col-Erase Non-Photo Blue Pencils, 1 doz.", "Office Supplies", "16.00", "50", "0.00"),
	   ("Stainless Steel Thermos, 32oz", "Household Items", "22.00", "100", "0.00"),
	   ("Universal Waite Tarot Deck", "Toys and Games", "12.00", "100", "0.00"),
	   ("Pocari Sweat 1.5 liter bottles, pack of 8", "Groceries", "80.00", "125", "0.00"),
	   ("eufy BoostIQ RoboVac 30", "Household Items", "250.00", "20", "0.00"),
	   ("Neu! LP Box Set, Orange Vinyl", "Media", "200.00", "80", "0.00"),
	   ("Topo Chico 1.5 liter bottles, pack of 8", "Groceries", "20.00", "111", "0.00"),
	   ("Deleter Manga Tool Kit SPDX", "Office Supplies", "77.50", "100", "0.00"),
	   ("Cards Against Humanity - Complete Edition", "Toys and Games", "100.00", "26", "0.00"),
	   ("Deleter Neopiko Comic Pen Black All Size Set", "Office Supplies", "13.50", "40", "0.00"), 
    	   ("Panasonic 1.6 cu. ft. 1250w Microwave Oven", "Household Items", "140.00", "100", "0.00"), 
    	   ("Doctor Who T.A.R.D.I.S. Coffee Mug", "Household Items", 9.25, 350),
    	   ("Day of the Dead Leggings", "Toys and Games", 19.90, 400), 
    	   ("Organic Matcha Green Tea Powder", "Groceries", 21.05, 1000),
    	   ("Monster House DVD", "Media", 24.99, 2500),
    	   ("Graveyard Halloween Decoration Set", "Electronics", 18.49, 456),
    	   ("Sweeney Todd Soundtrack CD", "Media", 12.95, 752),
    	   ("Limited Edition 4th Doctor Scarf", "Office Supplies", 15.57, 8),
    	   ("Inflatable 6ft Spider", "Electronics", 18.83, 204),
	   ("End Table", "Household Items", "139.99", "19", "0.00");

CREATE TABLE departments (
	department_id INTEGER (10) AUTO_INCREMENT NOT NULL,
	department_name VARCHAR (250) NOT NULL,
	over_head_costs DECIMAL (10,2) NOT NULL,
	total_sales DECIMAL (10,2),
	PRIMARY KEY (department_id)
);

INSERT INTO departments (department_name, over_head_costs, total_sales)
VALUES ("Office Supplies", "100.50", "0.00"),
	("Electronics", "60.00", "0.00"),
	("Toys and Games", "50.00", "0.00"),
	("Groceries", "80.00", "0.00"),
	("Media", "66.00", "0.00");

SELECT * FROM products;
