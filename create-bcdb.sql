--use master;
--go
--create database BcDb;
--go
use BcDb
go
create table Customers 
	(Id int not null primary key identity (1,1),
	code varchar(10) NOT NULL unique,
	name varchar(30) not null,
	sales decimal(9,2) not null default 0 check (sales >= 0),
	active bit not null default 1,
	created datetime not null default getdate(),
	);
go

select * from customers

insert Customers
	(code,name,sales,active)
	values
	--('W25', 'Eden Russell', 15000.75, 0)
	--('N25', 'Victoria Jean', 500.00, 0),
	--('S20', 'Elizabeth Ann', 2.00, 1),
	--('E25', 'Joseph Michael', 23000.00, 0),
	--('W15', 'Kenneth Michael', 350000.00,1)
	--('N15', 'Eliza Rea', 12.00,0),
	--('S10', 'Euegene Patrick', 2000000.99, 1),
	--('E15', 'Scott Arnold', 1.99,0)