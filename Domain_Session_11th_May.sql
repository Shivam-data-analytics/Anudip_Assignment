/*Date : 11th May, 2026
Domain Session :
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Aggregation Functions : 
Operate on a set of values and returns a single value.

*SUM : Calculate the summation of the set of values. SUM() adds all the values from the specified column and returns a single total value.

*AVERAGE (AVG) : The AVG() function in SQL calculates the average of a numeric column. It helps identify the central value of data by ignoring NULL entries.
Explanation : AVG() calculates the mean value of the numeric column.

*COUNT : Count the number of rows in the table or value. COUNT(*) returns the total number of rows present in the table.

* MIN and MAX : Minimum and Maximum. MAX() returns the largest value and MIN() returns the smallest value from the specified column.

* All Aggregation Functions will be performed on the select query. 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------/*
Create table Product(
Product_ID varchar(10) not null primary key, 
Product_Name varchar(25) not null, 
Category varchar(25) not null, 
Original_Price double not null,
Selling_Price double not null, 
Stock int not null); 

Insert into Product values 
('P101', 'Table', 'Furniture', 6000, 7000, 12),
('P102', 'Chair', 'Furniture', 2000, 2500, 20),
('P103', 'Laptop', 'Electronics', 45000, 50000, 8),
('P104', 'Shoes', 'Footwear', 1500, 1800, 25),
('P105', 'Watch', 'Accessories', 3000, 3500, 15);

/*Question : Calculate the total selling price of all products.
Explanation : SUM(Selling_Price) adds all selling prices from the Product table./*
Select SUM(Selling_Price) from Product;

/*Question : Find the average selling price of all products.
Explanation : AVG(Selling_Price) returns the average selling price of all products./*
Select AVG(Selling_Price) from Product; 

/*Question : Count the total number of products in the Product table.
Explanation : COUNT(*) counts all rows present in the Product table./*
Select COUNT(*) from Product;

/*Question : Find the maximum stock available among all products.
Explanation : MAX(Stock) returns the highest stock value from the table./*
Select Max(Stock) from Product;

/*Question : Find the minimum stock available among all products.
Explanation : MIN(Stock) returns the smallest stock value from the table./*
Select Min(Stock) from Product;

/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Order By Clause : 
*Works on the Select Query 
*Arranges the data / column in the ascending or descending order. 

Question : Display all products arranged according to stock in ascending order.
Explanation : ORDER BY sorts the records in ascending order by default./*
Select * from Product Order By Stock; 

/*Question : Display all products arranged according to stock in descending order.
Explanation : DESC keyword sorts the records from highest to lowest./*
Select * from Product Order By Stock Desc; 

/*Question : Display the top 3 products having the highest stock.
Explanation : LIMIT restricts the number of rows returned after sorting./*
Select * from Product Order By Stock Desc Limit 3; 

/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Group By Clause : 
The SQL GROUP BY clause is used to group (organize) rows that have the same values in specified columns into summary rows./*

Create table Employee(
Employee_ID varchar(10) not null primary key, 
Employee_Name varchar(50) not null, 
Department varchar(25) not null, 
Salary int not null); 

Insert into Employee values 
('E101', 'Harshal', 'HR', 40000),
('E102', 'Pavani', 'IT', 6000),
('E103', 'Shreya', 'IT', 7000),
('E104', 'Sheetal', 'HR', 4500),
('E105', 'Harsh', 'Finance', 5000);

/*Question : Count the total employees in each department.
Explanation : GROUP BY Department creates groups for each department and COUNT(*) counts employees in each group./*
Select Department, Count(*) As Total_Employees from Employee Group By Department; 

/*Question : Calculate the total salary paid in each department.
Explanation : SUM(Salary) calculates the total salary for every department separately./*
Select Department, SUM(Salary) As Total_Salary 
from Employee 
Group By Department;  

/*Question : Find the average salary of employees department wise.
Explanation : AVG(Salary) returns the average salary for each department./*
Select Department, AVG(Salary) As Average_Salary 
from Employee 
Group By Department; 

/*Question : Count employees based on department and salary combination.
Explanation : GROUP BY Department, Salary creates groups using both department and salary values./*
Select Department, Salary, Count(*) from Employee
Group by Department, Salary; 

/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Where clause is used to filter row before grouping and having clause is used to filter after grouping.
 
Having Clause : 
The HAVING clause in SQL is used to filter grouped records based on a condition, involving aggregate functions such as COUNT(), SUM(), AVG(), MAX(), or MIN().

Question : Display departments having more than 1 employee.
Explanation : HAVING filters grouped records after COUNT() calculation./*
Select Department, Count(*) As Total_Employee from Employee Group By Department Having Count(*) > 1; 

/*Question : Display departments whose total salary is greater than 8000.
Explanation : HAVING SUM(Salary) > 8000 filters departments based on total salary./*
Select Department, SUM(Salary) As Total_Salary from Employee Group By Department Having Sum(Salary) > 8000; 

/*Question : Display departments having average salary greater than 5000.
Explanation : HAVING AVG(Salary) > 5000 filters departments whose average salary exceeds 5000./*
Select Department, Avg(Salary) as Average_Salary from Employee Group by Department Having Avg(Salary) > 5000;



