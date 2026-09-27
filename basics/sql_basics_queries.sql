
-- Topics: SELECT, WHERE, DISTINCT, ORDER BY, TOP, aliases and basic filtering.

-- Q1. Select all columns from Employees.
SELECT * FROM Employees;

-- Q2. Select EmployeeID, EmployeeName and Salary from Employees.
SELECT EmployeeID, EmployeeName, Salary FROM Employees;

-- Q3. Display only distinct employee cities.
SELECT DISTINCT City FROM Employees;

-- Q4. Display distinct customer segments.
SELECT DISTINCT Segment FROM Customers;

-- Q5. Find employees whose salary is greater than 70000.
SELECT * FROM Employees
WHERE Salary > 70000;

-- Q6. Find employees whose salary is between 50000 and 80000.
SELECT * FROM Employees
WHERE Salary BETWEEN 50000 AND 80000;

-- Q7. Find employees located in Patna.
SELECT * FROM Employees
WHERE City = 'Patna';

-- Q8. Find customers from Delhi or Patna.
SELECT * FROM Customers
WHERE City IN ('Delhi', 'Patna');

-- Q9. Find products with price less than 5000.
SELECT * FROM Products
WHERE Price < 5000;

-- Q10. Find products whose stock quantity is greater than 50.
SELECT * FROM Products 
WHERE StockQty > 50;

-- Q11. Display employees ordered by salary from highest to lowest.
SELECT * FROM Employees
ORDER BY Salary DESC;

-- Q12. Display employees ordered by HireDate from oldest to newest.
SELECT * FROM Employees
ORDER BY HireDate ASC;

-- Q13. Display the five highest-paid employees.
SELECT TOP(5) * FROM Employees
ORDER BY Salary DESC;

-- Q14. Display the three most expensive products.
SELECT TOP(3) * FROM Products
ORDER BY Price Desc;

-- Q15. Show EmployeeName as Name and Salary as MonthlySalary.
SELECT EmployeeName AS Name, Salary as MonthlySalary FROM Employees;

-- Q16. Find customers whose name starts with 'A'.
SELECT * FROM Customers
WHERE CustomerName LIKE 'A%';

-- Q17. Find products whose name contains the word 'Book'.
SELECT * FROM Products
WHERE ProductName LIKE '%Book%';

-- Q18. Find employees whose JobTitle contains 'Engineer'.
SELECT * FROM Employees 
WHERE JobTitle Like '%Engineer%';

-- Q19. Find orders whose Status is Delivered.
SELECT * FROM Orders
WHERE Status = 'Delivered';

-- Q20. Find orders placed during February 2025.
SELECT * FROM Orders
WHERE OrderDate >= '2025-02-01'
    AND OrderDate < '2025-03-01';

-- Q21. Find products with price >= 1000 and stock quantity >= 50.
SELECT * FROM Products 
WHERE Price >= 1000 AND StockQty >= 50;

-- Q22. Find active employees with salary above 60000.
SELECT * FROM Employees 
WHERE  IsActive = '1' AND Salary > 60000;

-- Q23. Display customers from Patna, Delhi and Mumbai.
SELECT * FROM Customers 
WHERE City IN ('Patna', 'Delhi', 'Mumbai');

-- Q24. Display employees in descending salary and, for equal salary, ascending name.
SELECT * FROM Employees
ORDER BY Salary DESC, EmployeeName ASC; 

-- Q25. Return all customers except those in the Retail segment.
SELECT * FROM Customers
WHERE Segment NOT IN ('Retail');
