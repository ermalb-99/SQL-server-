CREATE DATABASE CUSTOMERS;
--KRIJIMI I DATABAZES

--KeyWord per te perdorur DATABAZEN 
USE CUSTOMERS;



------------------------------------------------------------------------------


-----------------------------------------------------KRIJIMI DHE INSERTIMI I TE DHENAVE NE TABELA--------------------------------------





--Krijimi tabeles 1  -----------------------------------------------------------------------
CREATE TABLE CITY
(
city_id int IDENTITY(1,1) PRIMARY KEY,
city_name varchar(20) null
);
--Insertimi tdhanunav
Insert into city(city_name)values('Prishtina'),('Mitrovica'),('Peja'),('Prizreni'),('Gjakova');
---------------------------------------------------------------------------------------------------------








--Krijimi tabeles 2------------------------------------------------------------------
CREATE TABLE CUSTOMERS (
  customer_id INT IDENTITY(100, 3),
  customer_name VARCHAR(255) NOT NULL,
  customer_address VARCHAR(255),
  city_idRef INT,
  age INT CHECK (age >= 18),
  phone_number VARCHAR(20) UNIQUE,
  payment DECIMAL(10,2) DEFAULT 5000,  
  registration_date DATETIME2,
  PRIMARY KEY (customer_id),
  FOREIGN KEY (city_idRef) REFERENCES CITY(city_id)
);
--Insertimi i te dhenave ne Tabelen 2-------------------------------------------
Insert into CUSTOMERS(customer_name,customer_address,city_idRef,age,phone_number,registration_date)values('Ermal','Bajram Kelmendi',1,24,'044145777','2023-06-03');
Insert into CUSTOMERS(customer_name,customer_address,city_idRef,age,phone_number,registration_date)values('Gjergj','Qendrea',2,19,'045988577','2023-04-04');
---------------------------------------------------------------------------------------------------------














--Select c.customer_name, p.city_name, c.customer_address, c.age, c.phone_number, c.payment from CUSTOMERS as c inner join city as p on p.city_id = c.city_idRef


-------------------------------------------Krijimi tabeles 3----------------------------
CREATE TABLE Suppliers
(
    Suppliers_ID int IDENTITY(1,1) PRIMARY KEY,
	Suppliers_Name nvarchar(50) NOT NULL,
	Suppliers_Person nvarchar(50),
    Suppliers_Address nvarchar(50),
	city_idRef INT,
	phone_number varchar(20),
	SupplyDate datetime,
	Customer_Idref int,	
	FOREIGN KEY (city_idRef) REFERENCES CITY(city_id),
	FOREIGN KEY (Customer_Idref) REFERENCES CUSTOMERS(customer_id)
);
----------INSERTIMI I TE DHENAVE NE TABELEN 4--------------------------------------------------
Insert into Suppliers(Suppliers_Name,Suppliers_Person,Suppliers_Address,city_idRef,phone_number,SupplyDate,Customer_Idref)values('Furnitor X','Ahmet','Veternik',1,'044111222','2023-01-01',100);
Insert into Suppliers(Suppliers_Name,Suppliers_Person,Suppliers_Address,city_idRef,phone_number,SupplyDate,Customer_Idref)values('Furnitor Y','Qendresa','Dardhishte',2,'049876543','2023-02-01',103);

---------------------------------------------------------------------------------------------------------













--Krijimi i tabeles 4--------------------------------------------------------------------------
CREATE TABLE Product
(
   Product_ID int IDENTITY(1,1) PRIMARY KEY,
   Product_Name nvarchar(50) NOT NULL, 
   Price decimal(10,2),
   SeriesPrice decimal(10,2),
   Quantity int,
   Madein nvarchar(50),
   Supplier_Idref int,
   FOREIGN KEY (Supplier_Idref) REFERENCES Suppliers(Suppliers_ID)
);
----INSERTIMI I TE DHENAVE NE TABELEN 4--------------------------------------------
Insert into Product(Product_Name,Price,SeriesPrice,Quantity,Madein,Supplier_Idref)values('Detergjent',5.20,50.00,1,'Rahovec',1)
Insert into Product(Product_Name,Price,SeriesPrice,Quantity,Madein,Supplier_Idref)values('Keqap',1.20,12,2,'Prishtine',2)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------






--KRIJIMI I TABELES 6------------------------------------------------------------------------------------
CREATE TABLE Orders
(
  Orders_Id int IDENTITY(10,2) PRIMARY KEY,
  Sales_person nvarchar(50) NOT NULL,
  Customer_idRef int,
  age int CHECK (age >= 18),
  phone_number varchar(20) UNIQUE,
  OrderDate datetime,
  FOREIGN KEY(Customer_idRef)REFERENCES CUSTOMERS(Customer_Id)
);
--INSERTIMI NE TABELEN 6 ------------------------------------------
Insert into Orders(Sales_person,Customer_idRef,age,phone_number,OrderDate)values('Haki',100,40,'044555444','2023-06-03');
Insert into Orders(Sales_person,Customer_idRef,age,phone_number,OrderDate)values('Avdullah',103,57,'038332244','2023-05-01');

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



--Krijimi i tabeles 7------------------------------- 
CREATE TABLE Orders_details
(
    Orders_details_Id int IDENTITY(10,3) PRIMARY KEY,
	Sales_person nvarchar(50) NOT NULL,
	Orders_IdRef int,
	product_id int,
	orderprice decimal(8,2),
	orderquantity int,
	FOREIGN KEY(product_id) REFERENCES Product(Product_ID),
	FOREIGN KEY(Orders_IdRef) REFERENCES Orders(Orders_Id)
);

Insert into Orders_details(Sales_person,Orders_IdRef,product_id,orderprice,orderquantity)values('Agim',10,1,2.40,2);
Insert into Orders_details(Sales_person,Orders_IdRef,product_id,orderprice,orderquantity)values('Afrim',12,2,26,5);

------------------------------------------------------------------------------------------