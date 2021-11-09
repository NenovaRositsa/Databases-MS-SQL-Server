CREATE TABLE People (

Id INT PRIMARY KEY IDENTITY(1,1),
Username NVARCHAR(200) NOT NULL,
Picture VARBINARY(MAX)
CHECK (DATALENGTH(Picture) <= 2097152.000000),
Height DECIMAL(7, 2),
[Weight] DECIMAL(7, 2),
Gender CHAR NOT NULL,
CHECK (Gender = 'm' or gender = 'f' ),
Birthdate DATETIME NOT NULL,
Biography NVARCHAR(MAX),
)

INSERT INTO People(Username, Picture, Height, [Weight], Gender, Birthdate, Biography) VALUES
('rnenova', NULL, 1.67, 57.00, 'f', 29/03/1990, 'iofjiojgfkk;'),
('rr', NULL, 1.69, 57.4879594, 'f', 29/05/1991, 'iofjioj76576576gfkk;'),
('ova', NULL, 1.57, 67.00, 'm', 23/03/1990, 'iou878tjggfjiojgfkk;'),
('rneova', NULL, 1.77, 77.97876, 'f', 02/03/2002, 'io0-5%%%%%fjiojgfkk;'),
('rne', NULL, 1.77, 97.765765, 'm', 01/07/1987, 'iofhyotkjiojgfkk;')