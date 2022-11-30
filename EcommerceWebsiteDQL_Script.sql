-- Data Query Language (DQL)

-- 3)	Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
 use `e-commerce_order-directory`;
 
 
 select CUS_GENDER as Gender,
 count(CUS_GENDER) as `Total Customer` from customer 
 where CUS_ID in 
 (select CUS_ID from `order` group by CUS_ID having sum(ORD_AMOUNT)>=3000)
 group by CUS_GENDER;
 
 
-- 4)	Display all the orders along with product name ordered by a customer having Customer_Id=2

 select o.ORD_ID , p.PRO_NAME	
 from `order` as o, 
 supplier_pricing as sp,
 product as p
 where CUS_ID =2 and
 o.PRICING_ID = sp.PRICING_ID and 
 sp.PRO_ID = p.PRO_ID;


-- 5)	Display the Supplier details who can supply more than one product.
	
    select s.* from supplier as s where s.SUPP_ID in 
    (select sp.SUPP_ID from supplier_pricing as sp
    group by sp.SUPP_ID having count(sp.SUPP_ID)>1);
	

-- 6)	Find the least expensive product from each category and 
--      print the table with category id, name, product name and price of the product

	select
    ct.CAT_ID,
	ct.CAT_NAME,
    min(sp.SUPP_PRICE) as MinPrice
    from supplier_pricing as sp, 
    product as p,
    category as ct
    where 
    sp.PRO_ID = p.PRO_ID and 
    p.CAT_ID  = ct.CAT_ID
	
    group by
    ct.CAT_NAME;



-- 7)	Display the Id and Name of the Product ordered after “2021-10-05”.
	
    select 
	sp.PRO_ID,
    p.PRO_NAME,
    o.ORD_DATE  
    from `order` as o ,
    supplier_pricing as sp,
    product as p
    where o.ORD_DATE > "2021-10-05" and 
	sp.pricing_ID = o.pricing_ID and 
    sp.PRO_ID = p.PRO_ID;
	

-- 8)	Display customer name and gender whose names start or end with character 'A'.

    select 
    cu.CUS_NAME,
    cu.CUS_GENDER
    from customer as cu
    where cu.CUS_NAME like "%A" or
    cu.CUS_NAME like "A%";


-- 9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service. 
-- For Type_of_Service, If rating =5, print “Excellent Service”,
-- If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”.
 
 delimiter $$
 Create procedure rating_procedure()
 begin 
 
 select 
 SUPP_ID, SUPP_NAME,avg_rating,
 case when avg_rating = 5 then 'Excellent Service'
	  when avg_rating > 4 then 'Good Service'
 	  when avg_rating > 2 then 'Average Service'
   else 'Poor Service'
  end as `Type_of_Service` from
(select
 sp.SUPP_ID,
 s.SUPP_NAME,
 avg(r.RAT_RATSTARS) as avg_rating
 from 
 rating as r,
 `order` as o,
 supplier_pricing as sp,
 supplier as s
 where r.ORD_ID = o.ORD_ID and
 o.Pricing_ID = sp.PRICING_ID and 
 sp.SUPP_ID = s.SUPP_ID
 group by sp.SUPP_ID,s.SUPP_NAME) as T1;
 
 end $$
 delimiter ;
 
 call rating_procedure();
 
 
 
