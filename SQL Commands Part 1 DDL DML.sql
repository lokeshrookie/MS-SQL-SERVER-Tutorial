

-- DDL Data Definition Language

/*
	-- Create, Alter, Drop

	-- ALTER

1.	ALTER TABLE <TABLE NAME> ALTER COLUM <COLUMN> <DATATYPE(SIZE)>
	EX: ALTER TABLE Employees ALTER Column FirstName varchar(100)

2.	ALTER TABLE <TABLE NAME> ADD <NEW COLUMN> <DATATYPE>
	ALTER TABLE Employees ADD Location varchar(50)

3.  ALTER TABLE Employs DROP Column Location;

4.  sp_rename: To change column name or table name 
	
	Ex Column Change: EXEC sp_rename 'Employees.FirstName', 'FName', 'COLUMN';
	Ex Table changes: Exec sp_rename 'Employees', 'Employs', 'OBJECT';

	-- Truncate: Deletes rows from the table. But not columns. Where clause is not supported.

	-- DROP : Deletes table from a database permanantly.	
*/

-- DML - Data Manipulation Language
/*
	INSERT: 

	EX of Single Row : 
	INSERT INTO Departments(DepartmentID, DepartmentName ) Values (101, 'Department A');

	Ex of Multiple rows:
	Insert into Departments(DepartmentId, DepartmentName) VALUES(105, 'Department G'), (106, 'Department H'); 

	Explicit INSERT: INSERT only required columns.
	Ex: INSERT INTO Departments(DepartmentID) Values (107);

	UPDATE:

	Ex: Update any column using Where clause.
	UPDATE Departments SET DepartmentName = 'Department I' Where DepartmentId = 107;

	Ex: 
	update Fake Set name = 'Loki' Where Id > 2

	DELETE: 

	Delete any using Where clause.
	Ex: Delete from Fake where name = 'Prudhvi'

	Delete All Rows:
	Ex: Delete from Fake  (same as Truncate) but Delete supports Where clause.



	IS NULL: 
	select * from Departments Where DepartmentName Is Null; 
	select * from Departments where DepartmentName IS NOT NULL;

	The LIKE operator in SQL Server is a powerful tool for
	searching and filtering data based on patterns within
	text columns.

	SELECT * FROM Customers WHERE Name LIKE '%Doe%';

	Ex: Filters the products which start with 'Shirt'
	SELECT * FROM Products WHERE ProductName LIKE 'Shirt%';

	Filters the employees whoose emials end with @example.com.
	SELECT * FROM Employees WHERE Email LIKE '%@example.com';

	Filters all cities which starts with L and ends with ndo. _ can contain anything.
	SELECT * FROM Cities WHERE CityName LIKE 'L_ndo';

	The % and _ characters have special meanings within the LIKE operator. 
	If you want to search for these characters literally,
	use the escape character (\) before them.

	Ex: SELECT * FROM Messages WHERE Message LIKE 'Don\%t delay!';

	This query searches for the exact phrase "Don%t delay!" in the "Message" column,
	escaping the percent sign (%) to prevent its wildcard functionality.

	To display an employee whoose name is having % symbol.
	select * from Employees Where FName like '%\%%'

	To Display an Employee whoose name starts with A, C, N, W
	select * from Employees where Fname like '[A, C, M, W]'

			SELECT * FROM Orders 
		WHERE OrderStatus LIKE '%shipped%' 
		  AND OrderDate BETWEEN '2024-05-01' AND '2024-05-29';

	NOT LIKE: opposite to like.

*/


-- SET OPERATORS
/*
	UNION
	UNION ALL
	INTERSECT
	EXCEPT
*/








