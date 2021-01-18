alter proc usp_searchEcomerce(@itemName varchar(100))
as
select id,itemname,CategoryName,Price,quantity from Ecomerce where itemName like '%'+@itemName+'%'

exec usp_searchEcomerce 'Len'

Select * from Ecomerce