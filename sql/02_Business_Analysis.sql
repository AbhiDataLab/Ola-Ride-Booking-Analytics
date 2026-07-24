---Project: Ride Booking Analysis
-- Author: Abhishek
-- Tool: MySQL


-- =====================================================
-- Question 1 
-- Business Question:
-- Retrieve all successful bookings.
--
-- Why?
-- To analyze only compleyeted rides that generated revenue
-- =====================================================

SELECT *
FROM cleaned_booking_data
WHERE Booking_Status = 'Success';

-- =====================================================
-- QUESTION 2
-- Business Question:
-- Find the average ride distance for each vehicle type.
--
-- because by which we can .....
--  understand which vehicle types are used for short
-- and long-distance travel.
-- =====================================================

SELECT
    Vehicle_Type,
    AVG(Ride_Distance) AS Average_Ride_Distance
FROM cleaned_booking_data
GROUP BY Vehicle_Type;


 =====================================================
-- QUESTION 3
-- Business Question:
-- Find the Top 5 Customers who booked the highest number of rides.
SELECT
    Customer_ID,
    COUNT(*) AS Total_Bookings
FROM cleaned_booking_data
GROUP BY Customer_ID
ORDER BY Total_Bookings DESC
LIMIT 5;

-- =====================================================
-- QUESTION 4
-- Business Question:
-- Get the number of rides cancelled by drivers due to
-- Personal & Car related issues.
--
-- Why?
-- To understand driver-related cancellations and
-- improve operational efficiency.
-- =====================================================

SELECT COUNT(*) AS Personal_Car_Cancellations
FROM cleaned_booking_data
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';


-- =====================================================
-- QUESTION 5
-- Business Question:
-- Find the maximum and minimum driver ratings for
-- Prime Sedan bookings.
--
-- Why?
-- To evaluate the best and worst customer experiences
-- for Prime Sedan rides.
-- =====================================================

SELECT
    MAX(Driver_Ratings) AS Highest_Driver_Rating,
    MIN(Driver_Ratings) AS Lowest_Driver_Rating
FROM cleaned_booking_data
WHERE Vehicle_Type = 'Prime Sedan';

--=====================================================
-- Question 6 
---Retrieve all rides where payment was made using UPI.
-- because we want to know how many rides the customer pay in upi 
select  * 
from cleaned_booking_data 
where Payment_Method = "upi";

-- =====================================================
--- Question 7 
----Find the average customer rating for each vehicle type.
---Beacuse we want to  know which vehicle is prefrenced by customer more 

select round(avg(customer_rating),2) as Average_customer_rating , vehicle_type 
from cleaned_booking_data
group by vehicle_type ;


--========================================================
----Question 8 
-----Calculate the total booking value of rides completed successfully.
----Beacuse we want to know how much company gets total succesfull values 
select  sum(booking_value) as total_booking_value
from cleaned_booking_data
where booking_status = "success";

--=======================================================
--Question 9 
-- List all incomplete rides along with the reason
 
--  doing this we will get the data which is not success  with the reason so that we can make better decision 

SELECT *
FROM cleaned_booking_data
WHERE Booking_Status in  ('canceled by customer',
"canaceled by customer" , "driver not found") ;