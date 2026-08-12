-- JOIN 

-- inner joins

select
   * 
from
    orders o 
inner join
   customers c 
on 
  o.cust_id=c.id;
  
  
-- left join

select
   * 
from
    orders o 
LEFT JOIN
   customers c 
on 
  o.cust_id=c.id
  

union    -- used uinin as a full join

select
   * 
from
    customers c
RIGHT JOIN
   orders o 
on 
  o.cust_id=c.id;
  
  
-- FUll join (not supported full join mysql)

select
   * 
from
    orders o
FULL JOIN
   customers c 
on 
  o.cust_id=c.id;
  




 


