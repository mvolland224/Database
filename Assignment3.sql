/*
Morgan Volland
CSC 355 Section 511
Assignment 3
Jan 26, 2021
*/

--1
Select description, cost, type
From Product
Where type = 'Furniture'
Order By Cost;

--2
Select ProductID, description, Cost
From Product
Where Cost>400
Order By Cost Desc;

--3
Select ProductID, description, type
From Product
Where description Like  '%Computer%'
Order By  description;

--4
Select  state
From Warehouse group by state
Order By State;

--5
Select city, Min(sqft) as min_sqft
From Warehouse group by city
Order By City;

--6
Select sum(count(sqft))
From Warehouse 
Group By sqft
Having sqft< 100000;


--7
Select WID, amount
From INVENTORY
Where PID = 'D223'
Order By Amount;

--8
Select LastChecked, count(LastChecked)
From INVENTORY 
Group by Lastchecked
Order by count(LastChecked);

--9
Select PID, WID, lastchecked
From INVENTORY 
Where lastchecked >= '01-Jan-21'
Order By lastchecked, PID;

