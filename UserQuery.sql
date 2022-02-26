USE master
GO

CREATE DATABASE UserDB
GO

USE UserDB
GO



CREATE TABLE UserTable 
( 
	UserID INT IDENTITY(1,1) PRIMARY KEY  NOT NULL,
	UserName  VARCHAR(50),
	UserPass varchar(100),
	UserRole  tinyint
)
GO


INSERT INTO UserTable(UserName, UserPass, UserRole) VALUES
 ('Phonghaha', '1234567', 2),
 ('Phonghihi', 'abc12345', 1)
GO
