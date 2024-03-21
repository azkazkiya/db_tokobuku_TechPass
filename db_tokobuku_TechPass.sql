mysql -u root -p

CREATE DATABASE library;

USE library;

CREATE TABLE author (
Name Varchar(100) PRIMARY KEY NOT NULL,
URL VARCHAR(100) NOT NULL,
Address VARCHAR(100) NOT NULL
);

CREATE TABLE publisher (
Name Varchar(100) PRIMARY KEY NOT NULL,
URL VARCHAR(100) NOT NULL,
Address VARCHAR(100) NOT NULL,
Phone VARCHAR(100) NOT NULL
);

CREATE TABLE book (
ISBN INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
name_author INT NOT NULL,
constraint book_to_author FOREIGN KEY (name_author) references subjects (name),
name_publisher INT NOT NULL,
constraint book_to_publisher FOREIGN KEY (name_publisher) references subjects (name),
Year INT NOT NULL,
Title VARCHAR(100) NOT NULL,
Price VARCHAR(100) NOT NULL
);


CREATE TABLE warehouse (
Code INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
ISBN_book int NOT NULL,
constraint warehouse_to_book FOREIGN KEY (ISBN_book) references subjects (ISBN),
Address VARCHAR(100) NOT NULL,
Phone VARCHAR(100) NOT NULL
);

CREATE TABLE shopping_basket (
basketID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
ISBN_book int NOT NULL,
constraint basket_to_book FOREIGN KEY (ISBN_book) references subjects (ISBN)
);

CREATE TABLE customer (
Email varchar(100) PRIMARY KEY NOT NULL,
basketID int NOT NULL,
constraint cust_to_basket FOREIGN KEY (basketID) references subjects (basketID),
Name VARCHAR(100) NOT NULL,
Address VARCHAR(100) NOT NULL,
Phone VARCHAR(100) NOT NULL
);

