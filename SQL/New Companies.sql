# print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. 
# Order your output by ascending company_code.
# The tables may contain duplicate records.
# The company_code is string, so the sorting should not be numeric. 

SELECT C.company_code, 
        C.founder, 
        COUNT(DISTINCT LM.lead_manager_code),
        COUNT(DISTINCT SM.senior_manager_code),
        COUNT(DISTINCT M.manager_code),
        COUNT(DISTINCT E.employee_code)
FROM  Company AS C
    LEFT JOIN Lead_Manager AS LM
    ON C.company_code = LM.company_code
    LEFT JOIN Senior_Manager AS SM
    ON C.company_code = SM.company_code
    LEFT JOIN Manager AS M
    ON C.company_code = M.company_code
    LEFT JOIN Employee AS E
    ON C.company_code = E.company_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code ASC
;
