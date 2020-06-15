--create database PRSDB

use PRSDB
go
create table Users
	(Id int not null primary key,
	Username varchar(30) not null unique,
	Password varchar(30) not null,
	Firstname varchar(30) not null,
	Lastname varchar(30) not null,
	Phone varchar(12) null,
	Email varchar(255) null,
	IsReviewer bit not null default 0,
	IsAdmin bit not null default 0);
--select * from users

create table Vendors
	(Id int not null primary key identity (1,1),
	Code varchar(30) not null unique,
	Name varchar(30) not null,
	Address varchar(30) not null,
	City varchar(30) not null,
	State varchar(2) not null,
	Zip varchar(5) not null,
	Phone varchar(12) null,
	Email varchar(255) null);
--select * from vendors
use PRSDB
go
create table Products
	(Id int not null primary key identity (1,1),
	PartNbr varchar(30) not null unique,
	Name varchar(30) not null,
	Price decimal(9,2) not null default 0,
	Unit varchar(30) not null default 'Each',
	PhotoPath varchar(255) null, 
	VendorsId int not null
		foreign key references Vendors(Id));
--select * from products

create table Requests
	(Id int not null primary key identity (1,1),
	Description varchar(80) not null,
	Justification varchar(80) not null,
	RejectionReason varchar(80) null,
	DeliveryMode varchar(20) not null,
	Status varchar(10) not null default 'NEW',
	Total decimal(11,2) not null default 0,
	UsersId int not null foreign key references Users(Id));
--select * from Requests
create table RequestLines
	(Id int not null primary key identity (1,1),
	RequestsId int not null foreign key references Requests(Id),
	ProductsId int not null foreign key references Products(Id),
	Quantity int not null default 1);
--select * from RequestLines