create database salesDB;

USE salesdb;
-- Question 1
SELECT 
    paymentDate, 
    SUM(amount) AS totalAmountPaid
FROM 
    payments
GROUP BY 
    paymentDate
ORDER BY 
    paymentDate; 
-- This query retrieves the total amount paid on each payment date from the payments table, grouping the results by paymentDate and ordering them chronologically.

SELECT 
    checkNumber, 
    paymentDate, 
    amount
FROM 
    payments
ORDER BY 
    paymentDate DESC;

-- This query retrieves all payment records from the payments table, ordering them by paymentDate in descending order to show the most recent payments first.


SELECT 
    paymentDate, 
    SUM(amount) AS totalAmount
FROM 
    payments
GROUP BY 
    paymentDate
ORDER BY 
    paymentDate DESC
LIMIT 5;
-- This query retrieves the top 5 payment dates with the highest total amounts paid from the payments table, ordering the results by paymentDate in descending order.

--  Question 2
SELECT 
    customerName, 
    country, 
    creditLimit AS averageCreditLimit
FROM 
    customers;
-- This query retrieves the customer names, their respective countries, and their credit limits from the customers table.

SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS averageCreditLimit
FROM 
    customers
GROUP BY 
    customerName, 
    country
ORDER BY 
    customerName;

-- This query retrieves the average credit limit for each customer, grouped by customerName and country, and orders the results alphabetically by customerName.

-- Question 3
SELECT 
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS totalPrice
FROM 
    orderdetails
GROUP BY 
    productCode, 
    quantityOrdered
ORDER BY 
    productCode, 
    quantityOrdered;
-- This query calculates the total price for each product based on the quantity ordered and price per unit from the orderdetails table, grouping the results by productCode and quantityOrdered, and ordering them accordingly.

--  Question 4
SELECT 
    checkNumber,
    MAX(amount) AS highestAmount
FROM 
    payments
GROUP BY 
    checkNumber
ORDER BY 
    highestAmount DESC;
-- This query retrieves the highest payment amount for each check number from the payments table, grouping the results by checkNumber and ordering them in descending order based on the highest amount.    

SELECT 
    checkNumber,
    MAX(amount) AS highestAmount
FROM 
    payments
GROUP BY 
    checkNumber
ORDER BY 
    checkNumber;
-- This query retrieves the highest payment amount for each check number from the payments table, grouping the results by checkNumber and ordering them in ascending order based on the checkNumber.