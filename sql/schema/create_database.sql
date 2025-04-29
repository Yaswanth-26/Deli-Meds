-- Create schema for Deli_Meds
CREATE SCHEMA IF NOT EXISTS Deli_Meds 
 DEFAULT CHARACTER SET utf8mb4 
 DEFAULT COLLATE utf8mb4_general_ci;

USE Deli_Meds;

-- Create a Table for Doctor
CREATE TABLE Doctor (
 Doctor_SSN CHAR(10) PRIMARY KEY,
 Doctor_Name VARCHAR(255),
 Specialty VARCHAR(255)
);

-- Create a Table for Customer
CREATE TABLE Customer (
 Customer_ID INT PRIMARY KEY,
 Customer_Firstname VARCHAR(255),
 Customer_Lastname VARCHAR(255),
 Customer_StreetAdress VARCHAR(255),
 Customer_City VARCHAR(255),
 Customer_ZipCode VARCHAR(10),
 Customer_Phone VARCHAR(15),
 Customer_email VARCHAR(255),
 Customer_Password VARCHAR(255),
 UNIQUE KEY (Customer_Phone, Customer_email, Customer_Password)
);

-- Create a Table for Review
CREATE TABLE Review (
 Customer_ID INT NOT NULL,
 Review_Number INT NOT NULL,
 Comment TEXT,
 PRIMARY KEY (Customer_ID, Review_Number),
 FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE
);

-- Create a Table for Pharmacy
CREATE TABLE Pharmacy (
 Pharmacy_ID INT PRIMARY KEY,
 Pharmacy_Name VARCHAR(255),
 Pharmacy_Location VARCHAR(255),
 Pharmacy_StreetAdress VARCHAR(255),
 Pharmacy_City VARCHAR(255),
 Pharmacy_ZipCode VARCHAR(10)
);

-- Create a Table for Orders
CREATE TABLE Orders (
 Order_ID INT PRIMARY KEY,
 Customer_ID INT NOT NULL,
 Order_Date DATE,
 FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

-- Create a Table for Cart
CREATE TABLE Cart (
 Cart_ID INT PRIMARY KEY,
 Pharmacy_ID INT NOT NULL,
 Order_ID INT,
 FOREIGN KEY (Pharmacy_ID) REFERENCES Pharmacy(Pharmacy_ID),
 FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID) ON DELETE SET NULL
);

-- Create a Table for Prescription
CREATE TABLE Prescription (
 Customer_ID INT NOT NULL,
 Doctor_SSN VARCHAR(10) NOT NULL,
 Cart_ID INT NOT NULL,
 Prescription_Date DATE,
 PRIMARY KEY (Customer_ID, Doctor_SSN, Cart_ID),
 FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
 FOREIGN KEY (Doctor_SSN) REFERENCES Doctor(Doctor_SSN),
 FOREIGN KEY (Cart_ID) REFERENCES Cart(Cart_ID)
);

-- Create a Table for Pharmacy_Phone
CREATE TABLE Pharmacy_Phone (
 Pharmacy_Phnr VARCHAR(15) PRIMARY KEY,
 Pharmacy_ID INT NOT NULL,
 FOREIGN KEY (Pharmacy_ID) REFERENCES Pharmacy(Pharmacy_ID) ON DELETE CASCADE
);

-- Create a Table for Medicine
CREATE TABLE Medicine (
 Medicine_ID INT PRIMARY KEY,
 Pharmacy_ID INT NOT NULL,
 Medicine_Name VARCHAR(255),
 Medicine_Price DECIMAL(10, 2),
 FOREIGN KEY (Pharmacy_ID) REFERENCES Pharmacy(Pharmacy_ID)
);

-- Create a Table for Services
CREATE TABLE Service (
 Service_ID INT PRIMARY KEY,
 Pharmacy_ID INT NOT NULL,
 Service_Type VARCHAR(255),
 Service_Description TEXT,
 Service_Price DECIMAL(10, 2),
 FOREIGN KEY (Pharmacy_ID) REFERENCES Pharmacy(Pharmacy_ID)
);

-- Create a Table for Products
CREATE TABLE Product (
 Product_ID INT PRIMARY KEY,
 Pharmacy_ID INT NOT NULL,
 Product_Name VARCHAR(255),
 Product_Price DECIMAL(10, 2),
 FOREIGN KEY (Pharmacy_ID) REFERENCES Pharmacy(Pharmacy_ID)
);

-- Create a Table for Order_Details
CREATE TABLE Order_Details (
 OD_ID INT PRIMARY KEY,
 Order_ID INT NOT NULL,
 Total_Price DECIMAL(10, 2),
 Quantity INT,
 Discount DECIMAL(5, 2),
 FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID) ON DELETE CASCADE
);

-- Create a Table for Payment
CREATE TABLE Payment (
 Payment_ID INT PRIMARY KEY,
 Order_ID INT NOT NULL,
 Amount DECIMAL(10, 2),
 Payment_Date DATE,
 FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID) ON DELETE CASCADE
);

-- Create a Table for Staff
CREATE TABLE Staff (
 Staff_ID INT PRIMARY KEY,
 Staff_SSN VARCHAR(10) UNIQUE,
 Staff_Name VARCHAR(255),
 Staff_Department VARCHAR(255),
 Staff_email VARCHAR(255) UNIQUE,
 Staff_Phone VARCHAR(15) UNIQUE
);

-- Create a Table for Queries
CREATE TABLE Queries (
 Query_ID INT PRIMARY KEY,
 Query_Date DATE,
 Query_Details TEXT
);

-- Create a Table for Interaction
CREATE TABLE Interaction (
 Staff_ID INT NOT NULL,
 Customer_ID INT NOT NULL,
 Query_ID INT NOT NULL,
 Interaction_Duration INT,
 PRIMARY KEY (Staff_ID, Customer_ID),
 FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID),
 FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
 FOREIGN KEY (Query_ID) REFERENCES Queries(Query_ID)
);

-- Create a Table for Admin
CREATE TABLE Admin (
 Admin_ID INT PRIMARY KEY,
 Admin_Name VARCHAR(255),
 Admin_email VARCHAR(255) UNIQUE,
 Admin_Password VARCHAR(255),
 Admin_Phone VARCHAR(15) UNIQUE
);

-- Create a Table for Offer
CREATE TABLE Offer (
 Offer_ID INT PRIMARY KEY,
 Admin_ID INT NOT NULL,
 Offer_Code VARCHAR(255),
 Offer_Details TEXT,
 FOREIGN KEY (Admin_ID) REFERENCES Admin(Admin_ID)
);

-- Create a Table for Offer_In
CREATE TABLE Offer_In (
 Pharmacy_ID INT NOT NULL,
 Offer_ID INT NOT NULL,
 PRIMARY KEY (Pharmacy_ID, Offer_ID),
 FOREIGN KEY (Pharmacy_ID) REFERENCES Pharmacy(Pharmacy_ID) ON DELETE CASCADE,
 FOREIGN KEY (Offer_ID) REFERENCES Offer(Offer_ID) ON DELETE CASCADE
);

-- Create a Table for Delivery
CREATE TABLE Delivery (
 Staff_ID INT NOT NULL,
 Pharmacy_ID INT NOT NULL,
 Order_ID INT NOT NULL,
 Delivery_Duration INT,
 Delivery_Date DATE,
 PRIMARY KEY (Staff_ID, Pharmacy_ID, Order_ID),
 FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID),
 FOREIGN KEY (Pharmacy_ID) REFERENCES Pharmacy(Pharmacy_ID),
 FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);
