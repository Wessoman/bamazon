DROP DATABASE IF EXISTS bamazon_db;

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
    	   ("Jiro Taniguchi - The Walking Man (Hardcover)", "Media", "25.00", "150", "0.00"),
    	   ("LEGO Community Minifigure Set", "Toys and Games", "40.00", "200", "0.00"), 
    	   ("Coca Cola Life, Case of 48 12oz cans", "Groceries", "40.00", "500", "0.00"),
    	   ("2020 Texas Gladiators, VHS Unrated", "Media", "25.99", "100", "0.00"),
    	   ("Nintendo Switch - Limited Edition Green and Red JoyCon", "Electronics", "320.00", "400", "0.00"),
    	   ("Lupin the Third: The Woman Called Fujiko Mine DVD + Blu-Ray Box", "Media", "120.00", "200", "0.00"),
    	   ("Blue Line Art Strathmore 400, 50 pages", "Office Supplies", "60.00", "80", "0.00"),
    	   ("Moog Mother-32, Minotaur, DFAM rack bundle w/Sub 37", "Electronics", "3200.00", "100", "0.00"),
	   ("Cuisinart CHW-12 Coffee and Tea maker", "Household Items", "45.00", "40", "0.00");

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
