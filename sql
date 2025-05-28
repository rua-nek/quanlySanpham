create database qlysanpham
USE qlysanpham

-- Create Nhacungcap table
CREATE TABLE Nhacungcap(
    mancc nvarchar(20) primary key,
    tenncc nvarchar(50),
    diachi nvarchar(100),
    dienthoai nvarchar(20)
)

-- Create Sanpham table with proper data types
CREATE TABLE Sanpham(
    masp nvarchar(20) primary key,
    tensp nvarchar(50),
    gia decimal(10,2),
    soluong int,
    mancc nvarchar(20),
    FOREIGN KEY (mancc) REFERENCES Nhacungcap(mancc)
)

-- Insert 5 records into Nhacungcap
INSERT INTO Nhacungcap (mancc, tenncc, diachi, dienthoai) VALUES
('NCC001', 'Công ty TNHH ABC', '123 Đường Lê Lợi, Hà Nội', '02438234567'),
('NCC002', 'Công ty CP XYZ', '456 Đường Nguyễn Trãi, TP.HCM', '02839234568'),
('NCC003', 'Doanh nghiệp TMN', '789 Đường Trần Hưng Đạo, Đà Nẵng', '02363634569'),
('NCC004', 'Cửa hàng Minh Phát', '321 Đường Hai Bà Trưng, Hải Phòng', '02253834570'),
('NCC005', 'Công ty Thực phẩm Vina', '654 Đường Lý Thường Kiệt, Cần Thơ', '02927234571')

-- Insert 5 records into Sanpham
INSERT INTO Sanpham (masp, tensp, gia, soluong, mancc) VALUES
('SP001', 'Máy tính Dell XPS', 25000000, 50, 'NCC001'),
('SP002', 'Điện thoại iPhone 13', 22000000, 100, 'NCC002'),
('SP003', 'Máy in HP LaserJet', 5000000, 30, 'NCC003'),
('SP004', 'Loa Bluetooth Sony', 1500000, 80, 'NCC004'),
('SP005', 'Bàn phím cơ Logitech', 1200000, 120, 'NCC005')
SELECT * FROM Sanpham join Nhacungcap on Sanpham.mancc = NhaCungCap.mancc
SELECT * FROM Nhacungcap
