create table Department(
	DeptId int primary key identity(1,1) not null,
	DepartName nvarchar(50) not null
)
go

create table Employee(
	EmployeeId int identity(1,1) primary key not null,
	FirstName nvarchar(20) not null,
	LastName nvarchar(10) not null,
	Password nvarchar(32) not null,
	Gender nvarchar(6) not null,
	Email nvarchar(max) not null,
	PhoneNumber nvarchar(11) not null,
	DOB datetime not null,
	Salary int,
	DeptId int foreign key references Department(DeptId)
)
go

create table Roles(
	RoleId int primary key identity(1,1) not null,
	RoleName nvarchar(30) not null,
)
go

create table EmployeeRoleMapping(
	MapId int primary key identity(1,1) not null,
	EmployeeId int FOREIGN KEY references Employee(EmployeeId) not null,
	RoleId int FOREIGN KEY references Roles(RoleId) not null
)
go

Drop table EmployeeRoleMapping
go
drop table Roles
go
drop table Department
go
drop table Employee
go

