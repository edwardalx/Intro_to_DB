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
  CONSTRAINT fk_customer_id FOREIGN Key (author_id) REFERENCES authors(author_id)
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
    Foreign Key (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE IF NOT EXISTS Order_Details(
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    Foreign Key (order_id) REFERENCES orders(order_id),
    book_id INT,
    Foreign Key (book_id) REFERENCES books(book_id),
    quantity DOUBLE
-- );
-- RENAME TABLE books TO myBooks;
-- RENAME TABLE myBooks TO Books;
-- RENAME TABLE authors TO myAuthors;
-- RENAME TABLE myAuthors TO Authors;

-- RENAME TABLE customers TO myCustomers;
-- RENAME TABLE myCustomers TO Customers;

-- RENAME TABLE orders TO myOrders;
-- RENAME TABLE myOrders TO Orders;
-- RENAME TABLE order_details TO myOrder_Details;
-- RENAME TABLE myOrder_details TO Order_Details;
-- SHOW TABLES;