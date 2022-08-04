/* write your SQL query below */ 
SELECT E2.ID,E2.Name,D1.DivisionName,E1.Name 
        AS ManagerName,E2.Salary
        FROM maintable_V8GGI E1
        LEFT JOIN maintable_V8GGI E2
        ON E1.ID=E2.ManagerID
        JOIN cb_companydivisions D1
        ON E2.DivisionID=D1.ID
        WHERE E1.ID=E2.ManagerID
        AND 3=(SELECT COUNT(DISTINCT Salary)
                FROM maintable_V8GGI
                WHERE E2.Salary<=Salary
              );