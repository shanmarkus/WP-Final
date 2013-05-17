CREATE DATABASE IF NOT EXISTS ITStore;

USE ITStore;

CREATE TABLE IF NOT EXISTS products(
	productID INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100),
	description VARCHAR(500),
	stock INT,
	price INT,
	pictureURL VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS users(
	userID INT AUTO_INCREMENT PRIMARY KEY,
	role VARCHAR(100),
	username VARCHAR(100),
	password VARCHAR(100),
	name VARCHAR(100),
	email VARCHAR(100)
);

INSERT INTO products(name, description, stock, price, pictureURL) VALUES ('Razer Imperator', 'Mouse imba!!', 50, 800000, 'http://assets.razerzone.com/eeimages/products/37/razer-imperator-gallery-2.png');
INSERT INTO products(name, description, stock, price, pictureURL) VALUES ('Mac Book Pro 2012', 'Laptop imba!!', 20, 15000000, 'http://www.notebookcheck.net/typo3temp/pics/0a5ae17c63.jpg');
INSERT INTO products(name, description, stock, price, pictureURL) VALUES ('Powerbank', 'Powerbank imba!!', 0, 200000, 'http://yplusx.com/upload/product/5/gallery/4f72e2dc12b01.gif');

INSERT INTO users(role, username, password, name, email) VALUES ('administrator', 'admin', 'admin', 'Administrator', 'admin@itstore.com');
INSERT INTO users(role, username, password, name, email) VALUES ('user', 'test1', 'test1', 'Test1', 'test1@itstore.com');