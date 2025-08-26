SELECT * FROM Customers;

-- Uso de Wildcards
SELECT * FROM Customers
WHERE ContactName LIKE 'An%'

-- CustomerId = A == ?
SELECT * FROM Customers
WHERE CustomerID LIKE 'A%'
SELECT * FROM Customers
WHERE CustomerID LIKE '%N'

SELECT * FROM Customers
WHERE CustomerID LIKE 'AN__R'

--CustomerId = Que tengan la letra "O" en el medio
SELECT * FROM Customers
WHERE CustomerID LIKE '__O__%'

SELECT *FROM Customers
WHERE CustomerID LIKE '[ABC]%'
--W J L
SELECT *FROM Customers
WHERE CustomerID LIKE '[WJY]%'
SELECT *FROM Customers
WHERE CustomerID LIKE '[^a-C]%'

--EJERCICIOS 
/*
1. Mostrar todos los "Curstomers" que tengan una dirección de "Av".
2. Mostrar todos los "Customers" que no pertenezcan al pais "Brasil"
3. Mostrar todos los "Customers" que no tengan una region "NULL" y que el fax no sea "NULL"
*/


SELECT * FROM Customers
WHERE Address LIKE '%AV%'

SELECT * FROM Customers
WHERE Country NOT LIKE 'Brazil'

SELECT * FROM Customers
WHERE Region is not null 
      and fax is not null


--Uso del In
SELECT * FROM Employees
WHERE TitleOfCourtesy IN ('Ms.','Mr.')

--Mostrar a los "Employees" que sean de la ciudad "Seattle, Tacoma, Redmond"

SELECT * FROM Employees
WHERE City IN ('Seattle', 'Tacoma', 'Redmond')

--Usos de Group By 
SELECT * FROM Customers
GROUP BY ContactTitle

SELECT COUNT(*) FROM Customers; --Contar los registros
SELECT * FROM Products;
SELECT SUM(UnitPrice) FROM Products; -- Sumar los precios unitarios de los productos.
SELECT AVG(UnitPrice) FROM Products; --Promedio de los precios unitarios

SELECT City, COUNT(*) 'Cantidad' FROM Customers
GROUP BY City
ORDER BY COUNT(*) DESC 

SELECT * FROM Suppliers
/*
4. Contar todas las "Order" agrupando por el "ShipCountry"
5. Contar todas las "Order" agrupando por el "ShipCity"
6. Sumar todos los "UnitPrice" de los "Products" agrupando por "CategoryId"
*/

SELECT ShipCountry, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY ShipCountry;

SELECT ShipCity, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY ShipCity;

SELECT CategoryID, SUM(UnitPrice) AS TotalPrice
FROM Products
GROUP BY CategoryID;
