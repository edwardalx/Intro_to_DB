CREATE DATABASE IF NOT EXISTS alx_book_store;
SHOW DATABASES;
USE alx_book_store;


SELECT DATABASE();

CREATE TABLE IF NOT EXISTS books(
  book_id INT PRIMARY KEY,
  title VARCHAR(130),
  author_id INT,
  price DOUBLE,
  publication_date DATE,
  CONSTRAINT fk_customer_id FOREIGN Key (author_id) REFERENCES authors(author_id)
);

CREATE TABLE IF NOT EXISTS authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215) UNIQUE,
    address TEXT
) ;

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    Foreign Key (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE IF NOT EXISTS order_details(
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    Foreign Key (order_id) REFERENCES orders(order_id),
    book_id INT,
    Foreign Key (book_id) REFERENCES books(book_id),
    quantity DOUBLE
);

#SHOW TABLES;