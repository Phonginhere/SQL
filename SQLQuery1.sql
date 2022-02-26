CREATE TABLE CuaMe(
	CuaMeID int identity(1,1) primary key not null,
	CuaMeName nvarchar(50) not null,
	CuaMeDesnvarchar nvarchar(70) not null
)

CREATE TABLE CuaCon(
	CuaConID int identity(1,1) primary key not null,
	CuaConSoLuong int not null,
	CuaConDes nvarchar(75) not null,
	CuaMeID int not null foreign key references CuaMe(CuaMeID)
)
Drop Table CuaCon
go
Drop Table CuaMe
go


