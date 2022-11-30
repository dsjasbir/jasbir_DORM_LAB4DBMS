-- Data Definition Language (DDL)

-- drop database `E-commerce_Order-directory`

-- Creaating Database
Create Database if not exists `E-commerce_Order-directory`;

-- Creation of Supplier table
Use `E-commerce_order-directory`;

-- Supplier table	
Create table if not exists supplier(
SUPP_ID Int primary key,
SUPP_NAME varchar(50)  not null,
SUPP_CITY varchar(50) not null,
SUPP_PHONE varchar(10) not null
);
 
 
 -- Customer table 
 Create table if not exists customer(
 CUS_ID int primary key,
 CUS_NAME varchar(20) not null,
 CUS_PHONE varchar(10),
 CUS_CITY varchar(30) not null,
 CUS_GENDER char
 );
 

 -- Category table 
 Create table if not exists `category`(
 CAT_ID int primary key,
 CAT_NAME varchar(20) not null
 ); 
 
 
 -- product table 
Create table if not exists product(
PRO_ID int primary key,
PRO_NAME varchar(20) not null default "Dummy",
PRO_DESC varchar(60),
CAT_ID int,
foreign key (CAT_ID) references category(CAT_ID)
);
 
-- supplier pricing table 
Create table if not exists supplier_pricing(
PRICING_ID int not null,
PRO_ID int not null,
SUPP_ID int not null,
SUPP_PRICE int default 0,
primary key (PRICING_ID),
foreign key (PRO_ID) references product(PRO_ID),
foreign key (SUPP_ID) references supplier(SUPP_ID)
);
 

-- order table
Create table if not exists `order`(
ORD_ID int not null,
ORD_AMOUNT int not null,
ORD_DATE date not null,
CUS_ID  int not null,
PRICING_ID int not null,

primary key (ORD_ID),
foreign key (CUS_ID) references customer (CUS_ID),
foreign key (PRICING_ID) references supplier_pricing (PRICING_ID)
);

-- rating table 
Create table if not exists rating(
RAT_ID int not null,
ORD_ID int not null,
RAT_RATSTARS int not null,

primary key (RAT_ID),
foreign key (ORD_ID) references  `order`(ORD_ID)

);


  
 
 