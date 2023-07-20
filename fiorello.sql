CREATE DATABASE Fiorello
USE Fiorello
CREATE TABLE Positions(
Id INT PRIMARY KEY IDENTITY,
[Name] VARCHAR(50) NOT NULL
)
CREATE TABLE Employees(
Id INT PRIMARY KEY IDENTITY,
[Image] VARCHAR(50) NOT NULL UNIQUE,
[Name] NVARCHAR(20) NOT NULL,
Surname NVARCHAR(20) NOT NULL,
PositionId INT FOREIGN KEY REFERENCES Positions(Id)
)
INSERT INTO Positions VALUES('Manager')
INSERT INTO Positions VALUES('Florist')
INSERT INTO Employees VALUES('crystal-brooks-image.jpg', 'Crystal', 'Brooks', 2)
INSERT INTO Employees VALUES('shirley-harris-image.jpg', 'Shirley', 'Harris', 1)
INSERT INTO Employees VALUES('beverly-clark-image.jpg', 'Beverly', 'Clark', 1)
INSERT INTO Employees VALUES('amanda-watkins-image.jpg', 'Amanda', 'Watkins', 1)
SELECT * FROM Employees INNER JOIN Positions ON Positions.Id = Employees.PositionId