CREATE DATABASE LISTACCOUNT
GO

USE LISTACCOUNT
GO

CREATE TABLE [User](
    Username nvarchar(30) primary key, -- Thay đổi để Username làm khóa chính
    [Password] nvarchar(30) NOT NULL,
    [Name] nvarchar(5) NOT NULL,
    LastName nvarchar(50) NOT NULL,
    Email nvarchar(100) NOT NULL,
    Salt nvarchar(100) NOT NULL
)
GO

-- Thêm dữ liệu người dùng
INSERT INTO [User] (Username, [Password], [Name], LastName, Email, Salt)
VALUES 
    ('vannha', 'abc123', N'Nhã', N'Văn', 'nha011246892@gmail.com', 'random_salt_value_1'),
    ('huongquynh', 'bcd123', N'Quỳnh', N'Hương', 'huongquynh@gmail.com', 'random_salt_value_2'),
    ('hoangmai', 'def123', N'Mai', N'Hoàng', 'hoangmai03@gmail.com', 'random_salt_value_3'),
    ('thanhphong', 'efg', N'Phong', N'Thanh', 'thanhphong03@gmail.com', 'random_salt_value_4')

-- Kiểm tra bảng User

ALTER TABLE [User] ALTER COLUMN Username nvarchar(100) NOT NULL;
ALTER TABLE [User] ALTER COLUMN [Password] nvarchar(100) NOT NULL;
ALTER TABLE [User] ALTER COLUMN Salt nvarchar(100) NOT NULL;
ALTER TABLE [User] ALTER COLUMN [Name] nvarchar(100) NOT NULL;
SELECT * FROM [User]
