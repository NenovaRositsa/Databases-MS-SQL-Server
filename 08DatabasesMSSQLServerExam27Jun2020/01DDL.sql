CREATE TABLE Clients (

ClientId INT PRIMARY KEY IDENTITY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Phone CHAR(12) NOT NULL
)

CREATE TABLE Mechanics (

MechanicId INT PRIMARY KEY IDENTITY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
[Address] VARCHAR(255) NOT NULL

)

CREATE TABLE Models (

ModelId INT PRIMARY KEY IDENTITY,
Name VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE Jobs (

JobId INT PRIMARY KEY IDENTITY,
ModelId INT REFERENCES Models(ModelId) NOT NULL,
[Status] VARCHAR(11) DEFAULT 'Pending' NOT NULL,
CHECK ([Status] IN ('In Progress', 'Finished', 'Pending')),
ClientId INT REFERENCES Clients(ClientId) NOT NULL,
MechanicId INT REFERENCES Mechanics(MechanicId),
IssueDate DATE NOT NULL,
FinishDate DATE

)

CREATE TABLE Orders (

OrderId INT PRIMARY KEY IDENTITY,
JobId INT REFERENCES Jobs(JobId) NOT NULL,
IssueDate DATE,
Delivered BIT DEFAULT 0 NOT NULL

)

CREATE TABLE Vendors (
VendorId INT PRIMARY KEY IDENTITY,
Name VARCHAR(50) NOT NULL UNIQUE

)
CREATE TABLE Parts (

PartId INT PRIMARY KEY IDENTITY,
SerialNumber VARCHAR(50) NOT NULL UNIQUE,
[Description] VARCHAR(255),
Price DECIMAL(15, 2) CHECK (Price > 0 AND Price != 0) NOT NULL,
VendorId INT REFERENCES Vendors(VendorId) NOT NULL,
StockQty INT DEFAULT 0 NOT NULL,
CHECK (StockQty > 0),

)

CREATE TABLE OrderParts (

OrderId INT REFERENCES Orders(OrderId),
PartId INT REFERENCES Parts(PartId),
Quantity INT DEFAULT 1 NOT NULL,
CHECK (Quantity > 0 AND Quantity != 0),
PRIMARY KEY (OrderId, PartId)

)

CREATE TABLE PartsNeeded (

JobId INT REFERENCES Jobs(JobId),
PartId INT REFERENCES Parts(PartId),
Quantity INT DEFAULT 1 NOT NULL,
CHECK (Quantity > 0 AND Quantity != 0),
PRIMARY KEY (JobId, PartId)
)