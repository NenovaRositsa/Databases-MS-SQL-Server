CREATE DATABASE Minions

use Minions

CREATE TABLE Minions
(
  Id INT NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Age INT

  CONSTRAINT PK_MinionsId
  PRIMARY KEY (Id)
  
)

CREATE TABLE Towns
(
  Id INT NOT NULL,
  Name VARCHAR(50) NOT NULL,
  

  CONSTRAINT PK_TownsId
  PRIMARY KEY (Id)
  
)

ALTER TABLE Minions
ADD TownId INT

CONSTRAINT FK_Minions_Towns
FOREIGN KEY (TownId)
REFERENCES Towns(Id)
  
  INSERT INTO Towns(Id, Name) VALUES
(1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna')

INSERT INTO Minions(Id, Name, Age, TownId) VALUES
(1, 'Kevin', 22, 1),
(2, 'Bob', 15, 3),
(3, 'Steward', NULL, 2)


