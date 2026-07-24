-- ===========================================
-- Project: Ride Booking Analysis
-- Author: Abhishek
-- Tool: MySQL
-- File: 01_Data_Exploration.sql
-- ===========================================

-- check avaibale tables
SHOW TABLES;

-- display table structure 
DESC cleaned_booking_data;


-- total number of records 
SELECT COUNT(*) AS Total_Records
FROM cleaned_booking_data;


-- preview first 10 rows 
SELECT *
FROM cleaned_booking_data
LIMIT 10;


-- Unique vehicle types
SELECT DISTINCT Vehicle_Type
FROM cleaned_booking_data;

-- Unique payment methods
SELECT DISTINCT Payment_Method
FROM cleaned_booking_data;

-- Unique driver cancellation reasons
SELECT DISTINCT Canceled_Rides_by_Driver
FROM cleaned_booking_data;

-- Customer rating range
SELECT
    MIN(Customer_Rating) AS Min_Rating,
    MAX(Customer_Rating) AS Max_Rating
FROM cleaned_booking_data;