
Drop table LopHoc
GO
CREATE TABLE LopHoc 
( 
	classID INT  NOT NULL Primary Key,
	className VARCHAR(50),
	comment NVarChar(100),
)
GO


INSERT INTO LopHoc(classID, className, comment) VALUES
 (GIÁ_TR?_1, GIÁ_TR?_2, GIÁ_TR?_3, …),
…,
 (GIÁ_TR?_1, GIÁ_TR?_2, GIÁ_TR?_3, …),
GO


Drop table SinhVien
GO
CREATE TABLE SinhVien 
( 
	id INT  NOT NULL ,
	name VARCHAR(60),
	age int,
	email varchar(60),
	class_id INT  NOT NULL ,
	diemly float,
)
GO





