create table sales(
	SaleID serial primary key,
	ProductID int,
	QuantitySold int,
	SaleDate Date,
	SalespersonID int,
	Price double precision


select * from sales

copy sales from 'D:\Data-Analyst9\SQL\Practice\data.csv' DELIMITER ',' csv header

create table products(
	ProductId serial primary key,
	ProductName varchar(155),
	Category varchar(155),
	Price double precision
)

select * from products	

copy products from 'D:\Data-Analyst9\SQL\Practice\product.csv' DELIMITER ',' csv header

create table salespersons(
	SalespersonID serial primary key,
	SalespersonName varchar(155),
	Region varchar(155)
)

copy salespersons from 'D:\Data-Analyst9\SQL\Practice\person_data.csv' DELIMITER ',' csv header

select * from salespersons

-- SQL queries 

--querie for Total Sales per product
select ProductID, sum(Price) as Total_Sales  from sales 
group by ProductID

--querie for Total Sales by region
select sum(s.Price) as total_sales, sp.region from sales as s
inner join salespersons as sp
on s.SalespersonID = sp.SalespersonID
group by sp.region

--querie fro average sale per person
select avg(Price) as average_sales, SalespersonID from sales
group by SalespersonID 






	