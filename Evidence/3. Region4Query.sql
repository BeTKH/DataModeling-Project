SELECT e.EmployeeID,
    CONCAT(e.FirstName, ' ', e.LastName) AS Name,
    e.Title,
    et.TerritoryID,
    t.TerritoryDescription,
    t.RegionID
FROM Employees e
    JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
    JOIN Territories t ON et.TerritoryID = t.TerritoryID
    JOIN Region r ON t.RegionID = r.RegionID
WHERE e.Title = 'Sales Representative'
    AND t.RegionID = 4;