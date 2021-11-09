CREATE DATABASE CarRental

CREATE TABLE Categories (
Id INT PRIMARY KEY NOT NULL,
CategoryName NVARCHAR(50) NOT NULL,
DailyRate DECIMAL(7, 2) NOT NULL,
WeeklyRate DECIMAL(7, 2) NOT NULL,
MonthlyRate DECIMAL(7, 2) NOT NULL,
WeekendRate DECIMAL(7, 2) NOT NULL

)
INSERT INTO Categories(Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate) VALUES
(1, 'First Category', 10.9, 20, 30, 50),
(2, 'Second Category', 10.57, 200, 30, 50),
(3, 'Third Category', 10, 70, 300, 5000)

CREATE TABLE Cars (
Id INT PRIMARY KEY NOT NULL,
PlateNumber NVARCHAR(50) NOT NULL,
Manufacturer NVARCHAR(50) NOT NULL,
Model NVARCHAR(50) NOT NULL,
CarYear INT NOT NULL,
CategoryId INT FOREIGN KEY REFERENCES Categories(Id) NOT NULL,
Doors TINYINT NOT NULL,
Picture VARBINARY(MAX),
Condition NVARCHAR(50),
Available BIT
)


INSERT INTO Cars(Id,
                 PlateNumber,
                 Manufacturer,
                 Model,
                 CarYear,
                 CategoryId,
                 Doors,
                 Available
                )
VALUES
(
       1,
       'CT7777CB',
       'BMW',
       '320',
       '2002',
       3,
       4,
       1
),
(
       2,
       'CT7557CB',
       'BMW',
       '535',
       '2009',
       3,
       4,
       0
),
(
       3,
       'CT7373CB',
       'BMW',
       '320',
       '1989',
       1,
       2,
       1
)
CREATE TABLE Employees (

Id INT PRIMARY KEY NOT NULL,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Title NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO Employees(Id,
                      FirstName,
                      LastName,
                      Title
                     )
VALUES
(
       1,
       'First',
       'One',
       'Mechanic'
),
(
       2,
       'Second',
       'Two',
       'Team Leader'
),
(
       3,
       'Third',
       'Three',
       'Boss'
)

CREATE TABLE Customers (
Id INT PRIMARY KEY NOT NULL,
DriverLicenceNumber NVARCHAR(50) NOT NULL,
FullName NVARCHAR(200) NOT NULL,
[Address] NVARCHAR(500) NOT NULL,
City NVARCHAR(50),
ZIPcode INT,
Notes NVARCHAR(MAX)


)

INSERT INTO Customers(Id, DriverLicenceNumber, FullName, [Address]) VALUES
(1, '567', 'First Name', 'First Address'),
(2, '5678765@', 'Second Name', 'Second Address'),
(3, '56t5893-3-7', 'Third Name', 'Third Address')

CREATE TABLE RentalOrders(

Id INT PRIMARY KEY NOT NULL,
EmployeedId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
CustomerId INT FOREIGN KEY REFERENCES Customers(Id) NOT NULL,
CarId INT FOREIGN KEY REFERENCES Cars(Id) NOT NULL,
TankLevel DECIMAL(5, 2) NOT NULL,
KilometrageStart INT,
KilometrageEnd INT,
TotalKilometrage INT,
StartDate NVARCHAR(20) NOT NULL,
EndDate NVARCHAR(20) NOT NULL,
TotalDays INT NOT NULL,
RateApplied DECIMAL(10, 2),
TaxRate DECIMAL(10, 2) NOT NULL,
OrderStatus NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)

)

INSERT INTO RentalOrders(Id, EmployeedId, CustomerId, CarId, TankLevel, StartDate, EndDate, TotalDays, TaxRate, OrderStatus) VALUES
(1, 1, 1, 1, 50.97, '29/04/2020', '09/04/2020', 11, 5000.29, 'NEW'),
(2, 2, 2, 2, 100.97, '31/03/2020', '09/04/2020', 10, 5000.29, 'NEW'),
(3, 3, 3, 3, 77.9, '01/04/2019', '09/04/2019', 9, 5000.29, 'CLOSED')
