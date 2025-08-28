use Northwind



select * from Customers;

select CustomerID From Customers

Where CustomerID in ('ALFIKI','ANATR','ANTON','AROUT','BERGS')



select * from Customers

WHERE CustomerID IN(

SELECT CustomerID FROM Customers

WHERE CustomerID in ('ALFIKI','ANATR','ANTON','AROUT','BERGS') 

);



SELECT * FROM Products

WHERE CategoryID IN(

SELECT CategoryID FROM Products

WHERE CategoryID in ('ALFIKI','ANATR','ANTON','AROUT','BERGS') 

);



SELECT * FROM Products

WHERE CategoryID IN(

SELECT TOP(5) CategoryID FROM Categories

GROUP BY CategoryID)

--ORDER BY CategoryID DESC



SELECT CategoryID, COUNT (*) FROM Products

WHERE CategoryID IN(

SELECT TOP(5) CategoryID FROM Categories

GROUP BY CategoryID)

--1 =8, 77

SELECT 'PIAD-302' FROM Categories

UNION 

SELECT 'PIAD-303' FROM Categories

--2 = 77, 8

SELECT 'PIAD-302' FROM Categories

UNION ALL

SELECT 'PIAD-303' FROM Categories



--Unir todas las filas, id y nombre de las tablas productos y categorias.
SELECT CategoryID,CategoryName FROM Categories 
UNION ALL
SELECT ProductID,ProductName From Products


--Consulta - Uso de INNER JOIN
SELECT * FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID

--Mostrar el ProductID,ProductName, UnitePrice, CategoryName


SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID
--ORDER Y CUSTOMERS -- INNER (3 COLUMNAS DE CADA TABLA)
SELECT 
o.orderdate, o.OrderID, o.CustomerID
c.CustomerID, c.CompanyName, c.ContacName
FROM Orders o
INNER JOIN
 Customers c ON o.CustomerID = c. Customers
--ORDERS Y ORDERS DETAILS -- INNER  (5 COLUMNAS DE CADA TABLA)

/* 
1.Mostrar el total de los "Order" y agruparlos por Company Nmae
nota: Para calcular el total, lo obtienes de la tabla Order detail (unitprice * Quantity)
e
10248
10249

*/
--2. mostrar la cantidad de orders agrupados por el nombre del empleado
--Ejemplo:
--nancy 20
--janet 88

----
--Consulta - Uso de INNER JOIN
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName FROM Products p
INNER JOIN Categories c ON P.CategoryID = c.CategoryID

/* 
1. Mostrar el total de los "Order" y agruparlos por Company Name
Nota: Para calcular el total, lo obtienes de la tabla Order details (UnitPrice * Quanty)
Ejemplo:
Alfreds Futterkiste                   - 600
Ana Trujillo Emparedados y helados    - 955

2. Mostrar la cantidad de "orders" agrupados por el nombre del empleado
Ejemplo:
Nancy 20
Janet 88
*/

SELECT c.CompanyName, SUM(od.UnitPrice * od.Quantity)
FROM Orders o
JOIN [Order Details] od ON o.OrderID = od.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName;


SELECT e.FirstName, COUNT(o.OrderID)
FROM Orders o
JOIN Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY e.FirstName;


