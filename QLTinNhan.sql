-- Tạo cơ sở dữ liệu QLTinNhan
CREATE DATABASE QLTinNhan;
GO

-- Sử dụng cơ sở dữ liệu QLTinNhan
USE QLTinNhan;
GO

-- Tạo bảng Messages
CREATE TABLE Messages (
    Id INT IDENTITY PRIMARY KEY,               -- Khóa chính tự tăng
    Sender NVARCHAR(100) NOT NULL,            -- Người gửi
    Receiver NVARCHAR(100) NOT NULL,          -- Người nhận
    EncryptedMessage NVARCHAR(MAX) NOT NULL,  -- Tin nhắn được mã hóa
    DigitalSignature NVARCHAR(MAX),           -- Chữ ký số
    Timestamp DATETIME NOT NULL DEFAULT GETDATE(), -- Thời gian gửi mặc định
    Plaintext1 NVARCHAR(MAX) NULL,            -- Nội dung tin nhắn gốc 1 (nếu có)
    Plaintext2 NVARCHAR(MAX) NULL,            -- Nội dung tin nhắn gốc 2 (nếu có)
    CipherToString1 NVARCHAR(MAX) NULL,       -- Dạng chuỗi giải mã 1
    CipherToString2 NVARCHAR(MAX) NULL        -- Dạng chuỗi giải mã 2
);
GO

-- Kiểm tra kết quả
SELECT * FROM Messages;

-- Nếu muốn xóa toàn bộ dữ liệu trong bảng Messages
DELETE FROM Messages;
GO
