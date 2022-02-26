Drop table  if exists Khoa
go

CREATE TABLE Khoa 
( 
	Khoa_Id Varchar(10)  NOT NULL Primary Key,
	Khoa_Ten NVARCHAR(100)
)
GO

INSERT INTO Khoa(Khoa_Id, Khoa_Ten) VALUES
 ('AVAN', 'Khoa anh van'),
 ('CNTT', 'Khoa cong nghe thong tin'),
 ('DTVT', 'Khoa dien tu vien thong'),
 ('QTKD', 'Khoa quan tri kinh doanh')
GO

Drop table  if exists SinhVien
go

CREATE TABLE SinhVien 
( 
	SinhVien_id Varchar(10)  NOT NULL Primary Key,
	SinhVien_fullName NVARCHAR(100),
	SinhVien_DOB date,
	SinhVien_Gender NVarchar(10),
)
GO

INSERT INTO SinhVien(SinhVien_id, SinhVien_fullName,SinhVien_DOB,SinhVien_Gender) VALUES
 ('s001', 'Tran Minh Son', '1985/05/01', 'Nam'),
 ('s002', 'Nguyen Quoc Bao', '1986/05/16', 'Nam'),
 ('s003', 'Phan Anh Trung', '1983/12/20', 'Nam'),
 ('s004', 'Bui Thi Anh Thu', '1985/02/01', N'Nữ'),
 ('s005', 'Nguyen Thanh Son', '1987/07/03', 'Nam')
GO

Drop table  if exists DiemThi
go

CREATE TABLE DiemThi 
( 
	Score_id int identity(1,1)  NOT NULL Primary Key,
	Score_id_SinhVien VARCHAR(10) NOT NULL,
	Score_id_Khoa varchar(10) NOT NULL, 
	Socre_id_MonThi varchar(50) not null,
	Score_num int
)
GO

ALTER TABLE DiemThi
   ADD CONSTRAINT FK_DiemThi_SinhVien FOREIGN KEY (Score_id_SinhVien)
      REFERENCES SinhVien (SinhVien_id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;

ALTER TABLE DiemThi
   ADD CONSTRAINT FK_DiemThi_Khoa FOREIGN KEY (Score_id_Khoa)
      REFERENCES Khoa (Khoa_Id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;


INSERT INTO DiemThi(Score_id_SinhVien,Score_id_Khoa,Socre_id_MonThi,Score_num) VALUES
 ('s001', 'CNTT','Cong nghe thong tin', '4'),
 ('s001', 'CNTT','Cong nghe thong tin', '6'),
 ('s002', 'DTVT','Dich vu van tai', '8'),
 ('s003', 'CNTT','Cong nghe thong tin', '6'),
 ('s004', 'AVAN','Anh van', '9'),
 ('s005', 'QTKD','quan tri kinh doanh', '7')
GO


SELECT Khoa_Id,
		Socre_id_MonThi,
		Score_num
	FROM DiemThi AS dt
	LEFT JOIN Khoa AS k ON dt.Score_id_Khoa = k.Khoa_Id
	where Score_id_SinhVien = 's001';
GO

select SinhVien_fullName from SinhVien where SinhVien_id = 's001';
select SinhVien_DOB from SinhVien where SinhVien_id = 's001';
select SinhVien_Gender from SinhVien where SinhVien_id = 's001';
Select SinhVien_id from SinhVien
select Score_id_Khoa from DiemThi as dt left join Khoa as k on dt.Score_id_Khoa = k.Khoa_Id where Score_id_SinhVien = 's001';

SELECT Khoa_Id, Socre_id_MonThi,Score_num FROM DiemThi AS dt LEFT JOIN Khoa AS k ON dt.Score_id_Khoa = k.Khoa_Id  where Score_id_SinhVien = 's001';