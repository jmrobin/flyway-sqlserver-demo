-- V003__AddEmployeesTitlesRelationship.sql
ALTER TABLE Employees ADD TitleId INT NOT NULL;
ALTER TABLE Employees ADD CONSTRAINT FkEmployeesTitles FOREIGN KEY(TitleId) REFERENCES Titles(Id);