USE sales;

-- Q1: Total payment amount per payment date, latest 5 dates
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Q2: Average credit limit per customer name and country
SELECT customerName, country, AVG(creditLimit) AS avgCreditLimit
FROM customers
GROUP BY customerName, country;

-- Q3: Total price of products ordered, per product code and quantity ordered
SELECT productCode, quantityOrdered, SUM(quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Q4: Highest payment amount per check number
SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
