use bootcamp;
SELECT 
    country AS Country_with_Max_CellPhones,
    year,
    total_cellphones
FROM (
    SELECT 
        country, 
        year, 
        total_cellphones,
        RANK() OVER (PARTITION BY year ORDER BY total_cellphones DESC) AS rnk
    FROM cell_phones
    WHERE total_cellphones IS NOT NULL AND total_cellphones > 0
) ranked
WHERE rnk = 1
ORDER BY year;

