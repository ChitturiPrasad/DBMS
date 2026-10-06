CREATE DATABASE PharmacyDB;
USE PharmacyDB;

-- Medicine Table
CREATE TABLE Medicine (
    Medicine_ID INT PRIMARY KEY,
    Medicine_Name VARCHAR(50) NOT NULL,
    Category VARCHAR(30),
    Manufacturer VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT,
    Expiry_Date DATE
);

-- Supplier Table
CREATE TABLE Supplier (
    Supplier_ID INT PRIMARY KEY,
    Supplier_Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(15),
    Address VARCHAR(100)
);

-- Customer Table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50) NOT NULL,
    Age INT,
    Phone VARCHAR(15)
);

-- Prescription Table
CREATE TABLE Prescription (
    Prescription_ID INT PRIMARY KEY,
    Customer_ID INT,
    Doctor_Name VARCHAR(50),
    Prescription_Date DATE,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

-- Sales Table
CREATE TABLE Sales (
    Sale_ID INT PRIMARY KEY,
    Customer_ID INT,
    Medicine_ID INT,
    Quantity INT,
    Sale_Date DATE,
    Total_Amount DECIMAL(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Medicine_ID) REFERENCES Medicine(Medicine_ID)
);

-- Insert Medicine Records
INSERT INTO Medicine VALUES
(101, 'Paracetamol', 'Pain Relief', 'ABC Pharma', 25.00, 100, '2027-05-10'),
(102, 'Amoxicillin', 'Antibiotic', 'MediCare', 80.00, 50, '2027-08-15'),
(103, 'Cetirizine', 'Allergy', 'HealthPlus', 40.00, 75, '2028-01-20'),
(104, 'Omeprazole', 'Acidity', 'ABC Pharma', 60.00, 60, '2027-11-25'),
(105, 'Vitamin C', 'Vitamin', 'NutriMed', 90.00, 120, '2028-03-18');

-- Insert Supplier Records
INSERT INTO Supplier VALUES
(1, 'ABC Distributors', '9876543210', 'Hyderabad'),
(2, 'MediCare Suppliers', '9876501234', 'Warangal'),
(3, 'HealthPlus Distributors', '9123456780', 'Vijayawada');

-- Insert Customer Records
INSERT INTO Customer VALUES
(201, 'Rahul', 21, '9000011111'),
(202, 'Priya', 22, '9000022222'),
(203, 'Kiran', 20, '9000033333');

-- Insert Prescription Records
INSERT INTO Prescription VALUES
(301, 201, 'Dr. Kumar', '2026-10-01'),
(302, 202, 'Dr. Anitha', '2026-10-02'),
(303, 203, 'Dr. Ravi', '2026-10-03');

-- Insert Sales Records
INSERT INTO Sales VALUES
(401, 201, 101, 2, '2026-10-01', 50.00),
(402, 202, 103, 1, '2026-10-02', 40.00),
(403, 203, 104, 2, '2026-10-03', 120.00);

-- Display all medicines
SELECT * FROM Medicine;

-- Display medicines with price greater than 50
SELECT Medicine_Name, Price
FROM Medicine
WHERE Price > 50;

-- Display medicines with available quantity
SELECT Medicine_Name, Quantity
FROM Medicine
WHERE Quantity > 0;

-- Display customers
SELECT * FROM Customer;

-- Display prescriptions
SELECT * FROM Prescription;

-- Display sales information
SELECT * FROM Sales;

-- Join Medicine and Sales
SELECT 
    Sales.Sale_ID,
    Medicine.Medicine_Name,
    Sales.Quantity,
    Sales.Total_Amount
FROM Sales
JOIN Medicine
ON Sales.Medicine_ID = Medicine.Medicine_ID;

-- Calculate total sales
SELECT SUM(Total_Amount) AS Total_Sales
FROM Sales;

-- Find average medicine price
SELECT AVG(Price) AS Average_Price
FROM Medicine;

-- Display medicines ordered by price
SELECT Medicine_Name, Price
FROM Medicine
ORDER BY Price DESC;