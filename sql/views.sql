---Project: Ride Booking Analysis
-- Author: Abhishek
-- Tool: MySQL


-- =====================================================
-- View 1
-- Successful Rides
-- =====================================================

CREATE VIEW Successful_Rides AS
SELECT *
FROM cleaned_booking_data
WHERE Booking_Status = 'Success';


-- =====================================================
-- View 2
-- Customer Cancelled Rides
-- =====================================================

CREATE VIEW Customer_Cancelled_Rides AS
SELECT *
FROM cleaned_booking_data
WHERE Booking_Status = 'Canceled by Customer';

-- =====================================================
-- View 3
-- Driver Cancelled Rides
-- =====================================================

CREATE VIEW Driver_Cancelled_Rides AS
SELECT *
FROM cleaned_booking_data
WHERE Booking_Status = 'Canceled by Driver';


-- =====================================================
-- View 4
-- Revenue View
-- =====================================================

CREATE VIEW Revenue_View AS
SELECT
    Booking_ID,
    Customer_ID,
    Vehicle_Type,
    Booking_Value
FROM cleaned_booking_data
WHERE Booking_Status = 'Success';