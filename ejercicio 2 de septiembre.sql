SELECT C.CompanyName AS Cliente, O.OrderID AS Pedido
FROM Customers C
INNER JOIN Orders O
    ON C.CustomerID = O.CustomerID;


SELECT C.CompanyName AS Cliente, O.OrderID AS Pedido
FROM Customers C
INNER JOIN Orders O
    ON C.CustomerID = O.CustomerID;


SELECT C.CompanyName, O.OrderID 
FROM Customers C
INNER JOIN Orders O
    ON C.CustomerID = O.CustomerID;

	SELECT * FROM Employees;

	SELECT e1.EmployeeID, e1.LastName,e2.LastName 'Reporta a' FROM Employees e1
	LEFT JOIN Employees e2
	ON e1.EmployeeID = e2.ReportsTo


	SELECT * FROM Employees
	WHERE BirthDate = '1948-12-08'

	SELECT o.ShipName'

	--------------------------------------


CREATE TABLE Users (
 id int,
 nombre varchar(100)
 );

 INSERT INTO Users VALUES (1, 'Jose');
 INSERT INTO Users VALUES (2, 'Luis');

 SELECT * FROM Users;

 -- PROCEDIMIENTO ALMACENADOS
 CREATE PROCEDURE ObtenerTodosLosUsuarios
 AS 
     SELECT * FROM Users;

 EXEC ObtenerTodosLosUsuarios;

---crear un STORE PROCEDURE PARA SUMAR
CREATE PROC SumarNumeros
(
     @numero1 int,
	 @numero2 int
	)
	AS
	  print '' + @numero1 + @numero2 + '';
	-- Ejemplo: Ejecutar el procedimiento almacenado creado.

	EXEC Sumarnumeros 45, 200;

-- CREAR 4 PROCEDIMIENTO ALMACENADOS: RESTAR, MULTIPLICAR, DIVIDIR, POTENCIAR.
	  
	  
	  
	  @total int
		@total = @numero1 + @numero2

		----

		CREATE PROC MultiplicarNumeros
(
     @numero1 int,
	 @numero2 int
	)
	AS
	  print '' * @numero1 * @numero2 * '';
	-- Ejemplo: Ejecutar el procedimiento almacenado creado.

	

	----- PROCEDIMIENTO PARA RESTAR

	CREATE OR ALTER PROC RestarNumeros
(
    @numero1 INT,
    @numero2 INT
)
AS
BEGIN
    SELECT @numero1 - @numero2 AS Resultado;
END;


EXEC RestarNumeros 200, 45;

------------------------------------------------------------------

  ----- PROCEDIMIENTO PARA MULTIPLICAR

  CREATE OR ALTER PROC MultiplicarNumero
(
    @numero1 INT,
    @numero2 INT
)
AS
    print ''+ @numero1 * @numero2 +'';
;

EXEC MultiplicarNumero 2, 45;

-----------------------------------------------------------------------------

----- PROCEDIMIENTO PARA POTENCIA

  CREATE PROC PotenciasNumero
(
    @numero1 INT,
    @numero2 INT
)
AS
    print ''+ POWER(@numero1 , @numero2) +'';
;

EXEC PotenciasNumero 20, 3;

---------------------------------------------