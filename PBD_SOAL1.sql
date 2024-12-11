
CREATE TABLE Employees
(
  empid           INT          NOT NULL IDENTITY,
  lastname        NVARCHAR(20) NOT NULL,
  firstname       NVARCHAR(10) NOT NULL,
  titleofcourtesy NVARCHAR(25) NOT NULL,
  gender		  NVARCHAR(20) NOT NULL,
)

INSERT INTO HR.Employees (empid, firstname, lastname, titleofcourtesy, gender)
VALUES
(1, 'Sara', 'Davis', 'Ms.', 'Female'),
(2, 'Don', 'Funk', 'Dr.', 'Unknown'),
(3, 'Judy', 'Lew', 'Ms.', 'Female'),
(4, 'Yael', 'Peled', 'Mrs.', 'Female'),
(5, 'Sven', 'Mortensen', 'Mr.', 'Male'),
(6, 'Paul', 'Suurs', 'Mr.', 'Male'),
(7, 'Russell', 'King', 'Mr.', 'Male'),
(8, 'Maria', 'Cameron', 'Ms.', 'Female'),
(9, 'Patricia', 'Doyle', 'Ms.', 'Female');
GO

SELECT empid, firstname, lastname, titleofcourtesy, 
CASE 
    WHEN titleofcourtesy IN ('Ms.', 'Mrs.') THEN 'Female'
    WHEN titleofcourtesy = 'Mr.' THEN 'Male'
    ELSE 'Unknown' 
	END AS gender
FROM HR.Employees;
GO