use hemsdb;

CREATE TABLE `hero` (
  `Cust_id` varchar(12) NOT NULL,
  `Customer_Name` varchar(25) DEFAULT NULL,
  `City` varchar(12) DEFAULT NULL,
  `State` varchar(12) DEFAULT NULL,
  `Customer_Segment` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Cust_id`)
);
INSERT INTO `hero` VALUES ('Cust_1','MUHAMMED MACINTYRE','Kolkata','West Bengal','SMALL BUSINESS'),
('Cust_10','CLAUDIA MINER','Kolkata','West Bengal','SMALL BUSINESS'),
('Cust_100','CHARLOTTE MELTON','Mumbai','Maharashtra','HOME OFFICE'),
('Cust_1000','JANE WACO','Mysore','Karnataka','CORPORATE'),
('Cust_1001','SANDRA FLANAGAN','Mysore','Karnataka','HOME OFFICE'),
('Cust_1002','STEVE NGUYEN','Mysore','Karnataka','CONSUMER'),
('Cust_1003','HERBERT FLENTYE','Mysore','Karnataka','SMALL BUSINESS'),
('Cust_1004','SANDRA FLANAGAN','Mysore','Karnataka','CORPORATE'),
('Cust_1005','LIZ WILLINGHAM','Mysore','Karnataka','HOME OFFICE'),
('Cust_1006','XYLONA PRICE','Mysore','Karnataka','CORPORATE'),
('Cust_1007','JOHN LUCAS','Mysore','Karnataka','SMALL BUSINESS'),
('Cust_1008','BILL OVERFELT','Mysore','Karnataka','CORPORATE'),
('Cust_1009','JOHN GRADY','Mysore','Karnataka','CORPORATE'),
('Cust_101','BARRY FRENCH','Mumbai','Maharashtra','CONSUMER'),
('Cust_1010','ROBERT MARLEY','Mysore','Karnataka','CORPORATE'),
('Cust_1011','MICK HERNANDEZ','Mysore','Karnataka','HOME OFFICE'),
('Cust_1012','GUY PHONELY','Mysore','Karnataka','CORPORATE'),
('Cust_1013','JAY KIMMEL','Mysore','Karnataka','SMALL BUSINESS'),
('Cust_1014','MATT CONNELL','Mysore','Karnataka','CORPORATE');





select * from hero;
-- select the names of all customers who belong to west bengal

select Customer_Name,State,City,Customer_Segment from hero where State='West Bengal';



-- print the details of all non small business customers

select Customer_Name,State,Customer_Segment from hero where Customer_Segment != 'Small business';



-- how many customers are from karnataka

select count(*) from hero where State='Karnataka';



-- list the details of all the customers from southern india namely Karnataka,Kerala,Tamil Nadu,Telangana

select Customer_Name,State,Customer_Segment from hero where State in ('Karnataka','Tamil Nadu','Telangana','Kerala');



-- print the names of all customers along with city and state

select Customer_Name,City,State from hero;

select * from hero;

-- What are the total number of customers from each city

select count(Customer_Name) as City_Wise_Customer,City from hero group by City;

-- What are the total number of segments from each state

select count(Customer_Segment) as State_Wise_Segment,State from hero group by State;

-- What are the maximum number of customer from each segment

select count(Customer_Name) as Segment_Wise_Customers,Customer_Segment from hero group by Customer_Segment;

-- Find the total number of customers from bihar in each segment

select count(Customer_Name) as Segment_Wise_Customers,State,Customer_Segment from hero where State ='Karnataka' group by Customer_Segment;

-- Find the total number of customers from mumbai in each segment

select count(Customer_Name) as city_wise_customers,city,customer_segment from hero where city='mumbai' group by customer_segment;

-- Find the segment wise customers where in the state in karnataka has more than 7 customers

select count(Customer_Name) as segment_wise_customers,State,customer_segment from hero where state='Karnataka' group by customer_segment 
having segment_wise_customers > 7;

-- List the customers name in alphabetical order

select distinct customer_name from hero order by customer_name;

-- List the state in alphabetical order

select distinct state,city from hero group by state,city;

-- Write a query to capitalize first letter of each name and ensure the rest one is in lower case

select  customer_name,concat(upper(substring(customer_name,1,1)),lower(substring(customer_name,2))) as customer_name_proper_case from hero;

-- Find the names of all customers having the substring nagan

select customer_name from hero where customer_name regexp 'nagan';

-- Print the customer names starting with a,b,c,d,e ,f and g

select customer_name from hero where customer_name regexp '^[abcdefg]' order by customer_name;


























 




