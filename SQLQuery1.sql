Create Proc usp_InsertProduct(@productName varchar(50),@Description varchar(100),@Category varchar(50),@Price float,@Quantity smallint,@ProductImage varbinary(max))
as
Insert product(ProductName,Description,Category,Price,Quantity,ProductImage)
values(@productName,@Description,@Category,@Price,@Quantity,@ProductImage)

Select * from product

select * from Ecomerce




--Create Proc usp_InsertEcomerce(@ItemName varchar(50),@Description varchar(100),@Price float,@quantity smallint,@Image varbinary(max),@CategoryName Varchar(50),@Colour varchar(50))
--as
--Insert Ecomerce(ItemName,Description,Price,quantity,Image,CategoryName,Colour)
--values(@ItemName,@Description,@Price,@quantity,@Image,@CategoryName,@Colour)