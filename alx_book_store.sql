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
  CONSTRAINT fk_customer_id FOREIGN KEY (author_id) REFERENCES Authors(author_id)
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
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE IF NOT EXISTS Order_Details(
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- ALTER TABLE order_details
-- DROP Foreign Key order_details_ibfk_1;
-- DROP TABLE order_details;
-- ALTER TABLE Orders
-- ADD order_date DATE;
-- SHOW TABLES;