Create Database QuanLySinhVien
Go

USE QuanLySinhVien
GO

CREATE TABLE SinhVien 
( 
	Name NVARCHAR(50) NOT NULL,
	Phone VARCHAR(50),
	Email VARCHAR(75),
	Pass VARCHAR(50) NOT NULL
)
GO

INSERT INTO SinhVien(Name, Phone, Email, Pass) VALUES
 ('Phong', '0987654321', 'phong@gmail.com', '123456'),
('Tu', '0123456789', 'tu@gmail.com', 'tudepzai'),
('Minh', '098765123', 'minh@gmail.com', 'minhdangcap123')
GO


