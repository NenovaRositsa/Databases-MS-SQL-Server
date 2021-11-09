CREATE DATABASE Hotel

CREATE TABLE Employees (
Id INT PRIMARY KEY,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Title NVARCHAR(500) NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO Employees(Id, FirstName, LastName, Title) VALUES
(1, 'First Name', 'First Last name', 'boss'),
(2, 'Second Name', 'Second Last name', 'employe'),
(3, 'Third Name', 'Third Last name', 'boss')

CREATE TABLE Customers (
AccountNumber INT PRIMARY KEY,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
PhoneNumber VARCHAR(50),
EmergencyName NVARCHAR(50) NOT NULL,
EmergencyNumber NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO Customers(AccountNumber, FirstName, LastName, EmergencyName, EmergencyNumber) VALUES
(1, 'nENOVA', 'ROUS', 'em1', '567'),
(2, 'ana', 'tomova', 'em2', '567677'),
(3, 'kristin', 'georgieva', 'em3', '5778767')

CREATE TABLE RoomStatus (
RoomsStatus NVARCHAR(50) PRIMARY KEY,
Notes NVARCHAR(MAX)
)

INSERT INTO RoomStatus(RoomsStatus) VALUES
('Free'),
('In use'),
('Reserved')

CREATE TABLE BedTypes (
BedType NVARCHAR(50) PRIMARY KEY,
Notes NVARCHAR(MAX)
)

INSERT INTO BedTypes(BedType) VALUES
('Single'),
('Double'),
('King size')


CREATE TABLE RoomTypes (
RoomType NVARCHAR(50) PRIMARY KEY,
Notes NVARCHAR(MAX)
)

INSERT INTO RoomTypes(RoomType) VALUES
('Luxory'),
('Casual'),
('Misery')


CREATE TABLE Rooms(
RoomNumber INT PRIMARY KEY,
RoomType NVARCHAR(50) NOT NULL,
BedType    NVARCHAR(50) NOT NULL,
Rate       DECIMAL(10, 2) NOT NULL,
RoomStatus NVARCHAR(50) NOT NULL,
Notes      NVARCHAR(MAX)

)

INSERT INTO Rooms(RoomNumber, RoomType, BedType, Rate, RoomStatus) VALUES
(7, 'Luxory', 'Single', 77.19, 'In use'),
(9, 'Casual', 'Double', 57.22, 'Reserved'),
(2, 'Misery', 'King size', 39, 'Free')

CREATE TABLE Payments
(
             Id                INT
             PRIMARY KEY NOT NULL,
             EmployeeId        INT NOT NULL,
             PaymentDate       DATE NOT NULL,
             AccountNumber     INT NOT NULL,
             FirstDateOccupied DATE NOT NULL,
             LastDateOccupied  DATE NOT NULL,
             TotalDays         INT NOT NULL,
             AmountCharged     DECIMAL(10, 2) NOT NULL,
             TaxRate           DECIMAL(10, 2) NOT NULL,
             TaxAmount         DECIMAL(10, 2) NOT NULL,
             PaymentTotal      DECIMAL(10, 2) NOT NULL,
             Notes             NVARCHAR(MAX)
)

INSERT INTO Payments(Id,
                     EmployeeId,
                     PaymentDate,
                     AccountNumber,
                     FirstDateOccupied,
                     LastDateOccupied,
                     TotalDays,
                     AmountCharged,
                     TaxRate,
                     TaxAmount,
                     PaymentTotal
                    )
VALUES
(
       1,
       1,
       '10-05-2015',
       1,
       '10-05-2015',
       '10-10-2015',
       5,
       75,
       50,
       250,
       75
),
(
       2,
       3,
       '10-11-2015',
       1,
       '12-15-2015',
       '12-25-2015',
       10,
       100,
       50,
       500,
       100
),
(
       3,
       2,
       '12-23-2015',
       1,
       '12-23-2015',
       '12-24-2015',
       1,
       75,
       75,
       75,
       75
)

CREATE TABLE Occupancies
(
             Id            INT
             PRIMARY KEY NOT NULL,
             EmployeeId    INT NOT NULL,
             DateOccupied  DATE NOT NULL,
             AccountNumber INT NOT NULL,
             RoomNumber    INT NOT NULL,
             RateApplied   DECIMAL(10, 2),
             PhoneCharge   VARCHAR(50) NOT NULL,
             Notes         NVARCHAR(MAX)
);

INSERT INTO Occupancies(Id,
                        EmployeeId,
                        DateOccupied,
                        AccountNumber,
                        RoomNumber,
                        PhoneCharge
                       )
VALUES
(
       1,
       2,
       '08-24-2012',
       3,
       1,
       '088 88 888 888'
),
(
       2,
       3,
       '06-15-2015',
       2,
       3,
       '088 88 555 555'
),
(
       3,
       1,
       '05-12-1016',
       1,
       2,
       '088 88 555 333'
)