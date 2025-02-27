use bootcamp;
SELECT 
    cp.Country,
    cp.Year,
    CONCAT(cp.Total_CellPhones, ' / ', p.Total_Population, ' = ', 
           ROUND(cp.Total_CellPhones / p.Total_Population, 6)) AS Phones_Per_Person
FROM cell_phones cp
JOIN population p 
    ON cp.Country = p.Country 
    AND cp.Year = p.Year
WHERE p.Total_Population IS NOT NULL
ORDER BY cp.Country, cp.Year;



