CREATE DATABASE Movies

CREATE TABLE Directors (
Id INT PRIMARY KEY,
DirectorName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Genres (
Id INT PRIMARY KEY NOT NULL,
GenreName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)

)

CREATE TABLE Categories (

Id INT PRIMARY KEY NOT NULL,
CategoryName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Movies (
Id INT PRIMARY KEY NOT NULL,
Title NVARCHAR(77) NOT NULL,
DirectorId INT FOREIGN KEY REFERENCES Directors(Id) NOT NULL,
CopyrightYear INT NOT NULL,
[Length] NVARCHAR(50) NOT NULL,
GenreId INT FOREIGN KEY REFERENCES Genres(Id) NOT NULL,
CategoryId INT FOREIGN KEY REFERENCES Categories(Id) NOT NULL,
Rating INT,
Notes NVARCHAR(MAX)

)


INSERT INTO Directors(Id, DirectorName) VALUES
(1, 'Director one'),
(2, 'Director star'),
(3, 'Director ops'),
(4, 'Director four'),
(5, 'Director five')

INSERT INTO Genres(Id, GenreName) VALUES
(1, 'comedy'),
(2, 'action'),
(3, 'drama'),
(4, 'comedy two'),
(5, 'comedy three')


INSERT INTO Categories(Id, CategoryName) VALUES
(1, 'category one'),
(2, 'category two'),
(3, 'category three'),
(4, 'category four'),
(5, 'category five')



INSERT INTO Movies(Id, Title, DirectorId, CopyrightYear, [Length], GenreId, CategoryId) VALUES
(1, 'title one', 1, '1999', 120, 1, 1),
(2, 'title two', 2, '2001', 150, 2, 2),
(3, 'title three', 3, '1997', 110, 3, 3),
(4, 'title four', 4, '1999', 130, 4, 4),
(5, 'title five', 5, '1999', 170, 5, 5)