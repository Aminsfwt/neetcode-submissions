select s.name
from sales_person s
where s.sales_id not in (
    select
        sales_id
    from company c
    join orders o
    on c.com_id = o.com_id
    where name = 'CRIMSON'
)
