use BcDb
go
alter table customers
	add StateCode char(2) not null default 'OH';