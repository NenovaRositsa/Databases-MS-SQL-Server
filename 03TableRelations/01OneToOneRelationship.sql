CREATE TABLE Passports (

PassportID INT PRIMARY KEY NOT NULL,
PassportNumber NVARCHAR(50) NOT NULL

)

CREATE TABLE Persons (

 PersonId INT PRIMARY KEY NOT NULL,
 FirstName NVARCHAR(50) NOT NULL,
 Salary DECIMAL(7, 2),
 PassportID INT FOREIGN KEY REFERENCES Passports(PassportID) NOT NULL
)

INSERT INTO Passports (PassportID, PassportNumber) VALUES
(101, 'N34FG21B'),
(102, 'K65LO4R7'),
(103, 'ZE657QP2')

INSERT INTO Persons (PersonID, FirstName, Salary, PassportID) VALUES

(1, 'Roberto', 43300.00, 102),
(2, 'Tom', 56100.00, 103),
(3, 'Yana', 60200.00, 101)