create table Questions(
	question_id int identity(1,1) not null,
	question_name nvarchar(25),
	question_desc nvarchar(200), 
	Role_ID int FOREIGN KEY REFERENCES Roles(Role_ID),
	question_date datetime,
	Employee_ID int FOREIGN KEY REFERENCES NhanViens(Employee_ID)
)

Drop Table Questions