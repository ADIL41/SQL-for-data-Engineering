select * from dim_customer;

select
    customer_id,
    phone
from 
    dim_customer 
   limit 50;

select * from dim_store;

select
   store_id,
   region,
   city
from 
    dim_store;
    
-- Where [means condition]
-- here we add a condition to show only female customer
select
 *
from
    dim_customer
 where
    (gender = 'F');
    

-- Here we have add a condition to show only male customers which are belong to country france
select
 *
from
    dim_customer
 where
    (gender = 'M') AND (country = 'France');
    


-- 2 [AND/ OR condition]

select
 *
from
    dim_customer
 where
    (gender = 'F') AND ((country='Croatia') or (join_date >  '2020-01-05'));
    
    
-- Like operator

select
  * 
from
   dim_customer
   
where
   first_name like 'A_h%y';   -- first name start with letter A and end with letter y (% means all,_ means ek letter chor kr usse agla wala h aye ga )
   
   
-- Sorting

 select 
     *
 from 
     dim_product
order by  
      unit_price desc;
      
      
-- ALIAS

select
   product_key,
   product_id,
   product_name as 'Product Name'
from
   dim_product;
   
-- Grouping
-- 1
select
  category,
  avg(unit_price) as 'Avg Price',
  sum(unit_price) as 'total price'
from
  dim_product
group by 
  category;
  
-- 2
select
  category,
  avg(unit_price) as Avg_Price,
  sum(unit_price) as total_price
from
  dim_product
group by
  category
having
      Avg_Price > 400; 

      
