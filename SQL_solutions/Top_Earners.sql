SELECT 
MAX(months*salary),
COUNT(employee_id)    
FROM EMPLOYEE
WHERE months*salary = (SELECT MAX(months*salary) FROM EMPLOYEE)