-- Data Manipulation Language
use `e-commerce_order-directory`;

-- Data insert in Supplier Table
 insert into supplier values (1,"Rajesh Retails","Delhi",1234567890);
 insert into supplier values (2,"Appario Ltd.","Mumbai",2589631470);
 insert into supplier values (3,"Knome products","Banglore",9785462315);
 insert into supplier values (4,"Bansal Retails	","Kochi",1234567890);
 insert into supplier values (5,"Mittal Ltd.","Lucknow",1234567890);
 
 
 -- Data insert in customer table customer
 insert into customer values (1,"AAKASH",9999999999,"DELHI","M");
 insert into customer values (2,"AMAN",9785463215,"NOIDA","M");
 insert into customer values (3,"NEHA",9999999999,"MUMBAI","F");
 insert into customer values (4,"MEGHA",9994562399,"KOLKATA","F");
 insert into customer values (5,"PULKIT",7895999999,"LUCKNOW","M");
 
 -- Data insert in Category table 
 insert into `category` values  (1,"BOOKS");
 insert into `category` values  (2,"GAMES");
 insert into `category` values  (3,"GROCERIES");
 insert into `category` values  (4,"ELECTRONICS");
 insert into `category` values  (5,"CLOTHES");
 
 -- Data insert in Product table 
  
  insert into product values (1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
  insert into product values (2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
  insert into product values (3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor 1TB SSD",4);
  insert into product values (4,"OATS","Highly Nutritious from Nestle",3);
  insert into product values (5,"HARRY POTTER",	"Best Collection of all time by J.K Rowling",1);
  insert into product values (6,"MILK","1L Toned MIlk",3);
  insert into product values (7,"Boat Earphones","1.5Meter long Dolby Atmos",4);
  insert into product values (8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
  insert into product values (9,"Project IGI","compatible with windows 7 and above",3);
  insert into product values (10,"Hoodie","Black GUCCI for 13 yrs and above	",5);
  insert into product values (11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
  insert into product values (12,"Train Your Brain"	,"By Shireen Stephen",1);
  
  
  -- Data insert in Supplier_pricing Table
  insert into supplier_pricing values(1,1,2,1500);
  insert into supplier_pricing values(2,3,5,30000);
  insert into supplier_pricing values(3,5,1,3000);
  insert into supplier_pricing values(4,2,3,2500);
  insert into supplier_pricing values(5,4,1,1000);
  INSERT INTO SUPPLIER_PRICING VALUES(6,12,2,780);
  INSERT INTO SUPPLIER_PRICING VALUES(7,12,4,789);
  INSERT INTO SUPPLIER_PRICING VALUES(8,3,1,31000);
  INSERT INTO SUPPLIER_PRICING VALUES(9,1,5,1450);
  INSERT INTO SUPPLIER_PRICING VALUES(10,4,2,999);
  INSERT INTO SUPPLIER_PRICING VALUES(11,7,3,549);
  INSERT INTO SUPPLIER_PRICING VALUES(12,7,4,529);
  INSERT INTO SUPPLIER_PRICING VALUES(13,6,2,105);
  INSERT INTO SUPPLIER_PRICING VALUES(14,6,1,99);
  INSERT INTO SUPPLIER_PRICING VALUES(15,2,5,2999);
  INSERT INTO SUPPLIER_PRICING VALUES(16,5,2,2999);

  
  
  -- Data insert in order table
  
  insert into `order` values(101,1500,"2021-10-06",2,1);
  insert into `order` values(102,1000,"2021-10-12",3,5);
  insert into `order` values(103,30000,"2021-09-16",5,2);
  insert into `order` values(104,1500,"2021-10-05",1,1);
  insert into `order` values(105,3000,"2021-08-16",4,3);
  insert into `order` values(106,1450,"2021-08-18",1,9);
  insert into `order` values(107,789,"2021-09-01",3,7);
  insert into `order` values(108,780,"2021-09-07",5,6);
  insert into `order` values(109,3000,"2021-00-10",5,3);
  insert into `order` values(110,2500,"2021-09-10",2,4);
  insert into `order` values(111,1000,"2021-09-15",4,5);
  insert into `order` values(112,789,"2021-09-16",4,7);
  insert into `order` values(113,31000,"2021-09-16",1,8);
  insert into `order` values(114,1000,"2021-09-16",3,5);
  insert into `order` values(115,3000,"2021-09-16",5,3);
  insert into `order` values(116,99,"2021-09-17",2,14);


-- Data insert in rating table 
 insert into rating values (1,101,4);
 insert into rating values (2,102,3);
 insert into rating values (3,103,1);
 insert into rating values (4,104,2);
 insert into rating values (5,105,4);
 insert into rating values (6,106,3);
 insert into rating values (7,107,4);
 insert into rating values (8,108,4);
 insert into rating values (9,109,3);
 insert into rating values (10,110,5);
 insert into rating values (11,111,3);
 insert into rating values (12,112,4);
 insert into rating values (13,113,2);
 insert into rating values (14,114,1);
 insert into rating values (15,115,1);
 insert into rating values (16,116,0);
 



  
  
  
  
  
  
  
  