CREATE DATABASE productdb;
USE productdb;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    [name] VARCHAR(255),
    [description] TEXT,
    price FLOAT,
    quantity INT,
    [date] DATE 
);

INSERT INTO products ([name], [description], price, quantity, [date])
VALUES
('Product 1', 'Description of product 1', 10.00, 100, '2024-01-04'),
('Product 2', 'Description of product 2', 15.00, 200, '2024-02-05'),
('Product 3', 'Description of product 3', 20.00, 150, '2024-03-06'),
('Product 4', 'Description of product 4', 25.00, 50, '2024-04-07'),
('Product 5', 'Description of product 5', 30.00, 75, '2024-05-08');