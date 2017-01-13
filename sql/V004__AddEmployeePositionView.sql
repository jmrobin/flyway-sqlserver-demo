-- V004__EmployeePositionView.sql
CREATE VIEW EmployeePositions AS
SELECT Employees.LastName, Titles.Title
FROM Employees
LEFT JOIN Titles ON Employees.TitleId=Titles.Id