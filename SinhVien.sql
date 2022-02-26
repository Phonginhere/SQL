Drop Table SinhVien;
go

CREATE TABLE SinhVien 
( 
	MaSV Varchar(20)  NOT NULL Primary Key,
	HoSV NVARCHAR(25),
	TenSV NVARCHAR(50),
	NgaySinh DATE,
    Gender NVARCHAR(10),
	MaKhoa VARCHAR(8)
)
GO


INSERT INTO SinhVien(MaSV, HoSV, TenSV, NgaySinh, Gender, MaKhoa) VALUES
 ('s001', 'Tran Minh', 'Son', '1985/05/01', 'Nam', 'CNTT'),
 ('s002', 'Nguyen Quoc', 'Bao', '1986/05/16', 'Nam', 'CNTT'),
 ('s003', 'Phan Anh', 'Trung', '1983/12/20', 'Nam', 'QTKD'),
 ('s004', 'Bui Thi Anh', 'Thu', '1985/02/01', N'Nữ', 'QTKD'),
 ('s005', 'Nguyen Thanh', 'Son', '1987/07/03', 'Nam', 'DTVT')
GO

SELECT MaSV, HoSV, TenSV,convert(varchar(8), NgaySinh, 103), Gender, MaKhoa FROM SinhVien

DELETE from SinhVien where MaSV = 's001';

select CONVERT(VARCHAR, NgaySinh, 103) from SinhVien;
go
select * from SinhVien;