Alter table Students
Add primary key (studentId);
go
Create table Score (
	Score_ID int primary key identity(1,1) not null,
	Score_Name nvarchar(50) not null,
	Score_Math int,
	Score_Literature int,
	Score_English int,
	studentId int foreign key references Students(studentId)
	
)
go

insert into Score values(N'Diểm thi THPT quốc gia', 8, 7, 9, 1), (N'Diểm thi học kì', 9, 7, 9, 2);


select * from Score
go

select * from Students
go