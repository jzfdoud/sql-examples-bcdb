--addig data to tables.

insert Users
	(id,Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	values
	--(1,'Eden101', 'abc123', 'Eden', 'Doud', 5135555678, 'erdoud@gmail.com', 1,1),
	--(2,'Kenmd', 'abc123', 'Kenneth', 'Doud', 5134445678, 'kendoud@gmail.com', 1,0),
	--(3,'mavis123', 'abc123', 'Mavis', 'Robinson', 5133335678, 'mav@gmail.com',0,0),


insert Vendors
	(code, name,address,city,state,zip,phone,email)
	values
	('AMZ', 'Amazon', '3 Bezos Way', 'Seattle', 'WA', 12345,null , null),
	('WHFDS', 'Whole Foods', ' 5 Bezos Way', 'Seattle', 'WA', 12345,null ,null ),
	('TRGT', 'Target', '4 Michigan Ave', 'Knoxville','TN', 12378, null, null),
	('KRGR', 'Kroger', '123 Vine St','Cincinnati','OH', 45245, null,null )

insert products
	(PartNbr,name,price,Unit,VendorsId)
	values
	(23, 'Chair', 56.99, 1, 1),
	(34, 'Keyboard', 129.99,1,1),
	(45, 'Blow Dryer', 45.99,1,1),
	(56, 'Organic Cashews', 9.99, 1, 2),
	(67, 'Goat Milk', 13.98, 1,2),
	(78, 'Kids Sneakers', 24.97, 1, 3),
	(89, 'Floor Lamp', 34.96, 1, 3),
	(90, 'Chocolate Milk', 2.99,1, 4),
	(10, 'Mango Grapefruit Sprk Water', 3.99, 1, 4),
	(12, 'Queen City Beef Hot Metts', 5.99, 1, 4)

insert Requests
	(description, Justification,DeliveryMode,Status,Total,UsersId)
	values
	('I am hungry', 'gotta eat', 'PickUp','NEW', 1, 2)

insert RequestLines
	(RequestsId,ProductsId,Quantity)
	values
	(1, 5, 1),
	(1, 6, 1),
	(1, 12, 5)




--trying to show subtotal for the entire request line


select sum(l.Quantity * p.Price) as 'SubTotal'
	from RequestLines l
	join products p 
		on l.ProductsId = p.Id
	
