
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
 (GI�_TR?_1, GI�_TR?_2, GI�_TR?_3, �),
�,
 (GI�_TR?_1, GI�_TR?_2, GI�_TR?_3, �),
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





