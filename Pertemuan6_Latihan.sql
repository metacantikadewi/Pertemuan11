CREATE DATABASE DEPARTMENT;
USE DEPARTMENT;

CREATE TABLE Departments
(
	DepartmentsID int PRIMARY KEY,
	Departmentsname VARCHAR(50) NOT NULL
);

CREATE TABLE Employees 
(
	EmployeesID int PRIMARY KEY,
	EmployeesName VARCHAR(50) NOT NULL,
	Salaries	INT,
	ManagerID	INT,
	DepartmentsID INT
	FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeesID),
	FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
);

CREATE TABLE Salaries
(
  employeeid         INT        PRIMARY KEY,
  salaries		     DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeesID)
);

CREATE TABLE Projects
(
	projectsid		INT		PRIMARY KEY,
	projectsname	VARCHAR (50), 
	projectsproyek  VARCHAR (50),
	departmentsid	INT		
	FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)

);

INSERT INTO projects (projectsid, projectsname, departmentsid)
VALUES ('73', 'chromakopia', '2408', );



SELECT (
    Employees.Name,
    P.ProjectName,
FROM 
    Employees E
LEFT JOIN 
    Projects P ON E.DepartmentsID = P.DepartmentsID;
);

//3

SELECT (
    projectsName,
    departmentsName,

FROM 
    Projects P
LEFT JOIN 
    Departments D ON P.DepartmentsID = D.DepartmentsID;
);

//4
SELECT 
    EmployeesName,
    S.Salaries,
FROM 
    Employees
FULL OUTER JOIN 
    Salaries S ON EmployeeID = S.EmployeeID;
);

//5

SELECT 
    EmployeesName,
    projectsname,
FROM
    Employees E
CROSS JOIN 
    Projects P;

//6

SELECT 
    EmployeesID AS EmployeesName,
    ManagersID  AS ManagerName
);
FROM 
    Employees E
LEFT JOIN 
    Employees ON EmployeeManagerID = ManagerEmployeeID;

//7

SELECT 
    EmployeesName AS EmployeeName,
    DepartmentsName AS DepartmentName
FROM 
    Employees E
JOIN 
    Departments D ON E.DepartmentsID = D.DepartmentsID;
