CREATE DATABASE IF NOT EXISTS alx_book_store;
SHOW DATABASES;
USE alx_book_store;


SELECT DATABASE();

CREATE TABLE IF NOT EXISTS Books(
  book_id INT PRIMARY KEY,
  title VARCHAR(130),
  author_id INT,
  price DOUBLE,
  publication_date DATE,
  CONSTRAINT fk_customer_id FOREIGN Key (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE IF NOT EXISTS Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215) UNIQUE,
    address TEXT
) ;

CREATE TABLE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    Foreign Key (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE IF NOT EXISTS Order_Details(
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    Foreign Key (order_id) REFERENCES Orders(order_id),
    book_id INT,
    Foreign Key (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
);

-- ALTER TABLE Orders
-- ADD order_date DATE;
-- SHOW TABLES;