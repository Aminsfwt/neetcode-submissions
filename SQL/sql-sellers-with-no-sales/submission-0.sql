-- Write your query below
select
    seller_name
from seller s
WHERE seller_id NOT IN (
    SELECT seller_id
    FROM Orders
    WHERE EXTRACT(year FROM sale_date) = 2020
)
ORDER BY seller_name;