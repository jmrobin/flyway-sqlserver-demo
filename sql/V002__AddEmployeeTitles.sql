-- V002__AddEmployeeTitles.sql
CREATE TABLE Titles
(
Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
Title VARCHAR(100) NOT NULL
)
GO
INSERT INTO Titles (Title) VALUES ('Underling');
INSERT INTO Titles (Title) VALUES ('Evil Overlord');
INSERT INTO Titles (Title) VALUES ('Benevolent Dictator');
GO