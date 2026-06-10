CREATE DATABASE db;
USE db;
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO employees (name, position, salary)
VALUES 
('Alice Johnson', 'Manager', 75000.00),
('Bob Smith', 'Developer', 60000.00),
('Charlie Brown', 'Designer', 50000.00),
('David Lee', 'Tester', 65000.00),
('John Durairaj', 'Jr Developer', 55000.00),
('Jack Daniels', 'Jr Manager', 70000.00);
SELECT * FROM employees;

CREATE TABLE Dept1(
dep_id INT PRIMARY KEY,
id INT,
dep_name VARCHAR(25),
Foreign Key(dep_id) References employees(id)
);
INSERT INTO Dept1 (dep_id, id, dep_name)
VALUES 
(1, 101, 'Sales'),
(2, 102, 'HR'),
(3, 103, 'Development'),
(4, 104, 'Operations'),
(5, 105, 'Finance'),
(6, 106, 'Administration');
SELECT * FROM Dept1;