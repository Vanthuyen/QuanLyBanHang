create database QUANLYBANHANG
go
use QUANLYBANHANG
go

CREATE TABLE SANPHAM (
  MaSP CHAR(6) PRIMARY KEY,
  TenSP NVARCHAR(150),
  SL INT,
  GiaBan Numeric(15),
  GiaNhap Numeric(15),
);
go
CREATE TABLE KHACHHANG (
  MaKH CHAR(6) PRIMARY KEY,
  TenKH NVARCHAR(150),
  SdtKH VARCHAR(10),
  DiaChiKH NVARCHAR(150)
);
go
CREATE TABLE NHANVIEN (
  MaNV CHAR(6) PRIMARY KEY,
  TenNV NVARCHAR(150),
  DiaChiNV NVARCHAR(150),
  SdtNV VARCHAR(10)
);
go
CREATE TABLE BAN_CHITIET (
  MaHD CHAR(6) PRIMARY KEY,-- PRIMARY KEY,
  MaSP CHAR(6) FOREIgN KEY REFERENCES SANPHAM(MaSP),
  TenSP NVARCHAR(150),
  SLBan INT,
  ThanhTien Numeric(15),
);
go
CREATE TABLE BAN (
  MaHD CHAR(6) PRIMARY KEY,
  MaKH CHAR(6) FOREIgN KEY REFERENCES KHACHHANG(MaKH),
  MaNV CHAR(6) FOREIgN KEY REFERENCES NHANVIEN(MaNV),
  NgayBan DATE,
  TongTienBan Numeric(15)
);
GO
INSERT INTO KHACHHANG (MaKH, TenKH,DiaChiKH, SdtKH)
VALUES
('KH0001', N'Nguyễn Văn An',N'1 Hải Châu, Q. Hải Châu, Đà Nẵng', '0812345678'),
('KH0002', N'Trần Thị Bình',N'2 Thanh Khê, Q. Thanh Khê, Đà Nẵng', '0823456789'),
('KH0003', N'Lê Quang Cả',N'123 Nguyễn Văn A, Q. Hải Châu, Đà Nẵng', '0834567890'),
('KH0004', N'Phạm Thị Duyên',N'456 Trần Hưng Đạo, Q. Thanh Khê, Đà Nẵng', '0845678901'),
('KH0005', N'Hồ Chí Minh',N'789 Lê Thị Minh Khai, Q. Cẩm Lệ, Đà Nẵng', '0856789012'),
('KH0006', N'Đào Thị Hồng',N'101 Hải Phòng, Q. Liên Chiểu, Đà Nẵng', '0867890123'),
('KH0007', N'Nguyễn Thị Ý',N'202 Cách Mạng Tháng 8, Q. Sơn Trà, Đà Nẵng', '0878901234'),
('KH0008', N'Trần Thị Khanh',N'303 Hồ Chí Minh, Q. Hải Châu, Đà Nẵng', '0889012345'),
('KH0009', N'Lê Quang Linh',N'404 Đào Duy Anh, Q. Thanh Khê, Đà Nẵng', '0890123456'),
('KH0010', N'Phạm Thị Mai',N'505 Nguyễn Thị Minh Khai, Q. Cẩm Lệ, Đà Nẵng', '0812345679'),
('KH0011', N'Hồ Thị Nhỏ',N'606 Hải Châu, Q. Hải Châu, Đà Nẵng', '0823456780'),
('KH0012', N'Đào Thị Hiền',N'707 Cao Thắng, Q. Sơn Trà, Đà Nẵng', '0834567891'),
('KH0013', N'Nguyễn Thị Phương',N'808 Nguyễn Văn Linh, Q. Thanh Khê, Đà Nẵng', '0845678902'),
('KH0014', N'Trần Thị Quý',N'909 Lê Thị Minh Khai, Q. Cẩm Lệ, Đà Nẵng', '0856789013'),
('KH0015', N'Lê Quang Sang',N'111 Huỳnh Thúc Kháng, Q. Liên Chiểu, Đà Nẵng', '0867890124'),
('KH0016', N'Phạm Thị Sáu',N'222 Trần Đình Tri, Q. Hải Châu, Đà Nẵng', '0878901235'),
('KH0017', N'Hồ Minh',N'333 Điện Biên Phủ, Q. Sơn Trà, Đà Nẵng', '0889012346'),
('KH0018', N'Đào Thị Yến',N'444 Hùng Vương, Q. Cẩm Lệ, Đà Nẵng', '0890123457'),
('KH0019', N'Nữ Hoàng Bảo An',N'555 Ngô Gia Tự, Q. Thanh Khê, Đà Nẵng' ,'0889012346'),
('KH0020', N'Đào Thị Linh',N'666 Lê Lợi, Q. Hải Châu, Đà Nẵng' ,'0890123457');

go
INSERT INTO NHANVIEN (MaNV, TenNV, DiaChiNV, SdtNV)
VALUES
('NV0001', N'Nguyễn Thị Ánh', N'12 Hải Phòng, Q. Hải Châu, TP. Đà Nẵng', '0312345678'),
('NV0002', N'Trần Phan Bảo Uyên', N'103 Nguyễn Thị Minh Khai, P. Hải Châu 1, Q. Hải Châu, TP. Đà Nẵng', '0323456789'),
('NV0003', N'Lê Thị Minh Anh', N'194/2a Âu Cơ, Q. Liên Chiểu, TP. Đà Nẵng', '0334567890'),
('NV0004', N'Phạm Thị Hồng Diễm', N'520 Điện Biên Phủ, P. Hòa Khê, Q. Thanh Khê, TP. Đà Nẵng', '0345678901'),
('NV0005', N'Trần Thị Huệ', N'H92/5/8/4 Trần Đình Tri, Q. Liên Chiểu, TP. Đà Nẵng', '0356789012'),
('NV0006', N'Võ Phương Thảo', N'145 Nguyễn Văn Linh, P. Nam Dương, Q. Hải Châu, TP. Đà Nẵng', '0367890123');

gO
INSERT INTO SANPHAM (MaSP, TenSP,SL, GiaBan, GiaNhap)
VALUES
('SP0001', N'Kem chống nắng Avene Cleanance Mat SPF50+', 50, 400000, 300000),
('SP0002', N'Kem nền MAC Studio Fix Fluid SPF 15', 30, 600000, 450000),
('SP0003', N'Son dưỡng môi Dior Addict Lip glow', 15, 750000, 600000),
('SP0004', N'Kem dưỡng da La Roche-Posay Effaclar Duo+', 40, 650000, 500000),
('SP0005', N'Sữa rửa mặt Simple Kind to Skin Refreshing Facial Wash gel', 50, 200000, 150000),
('SP0006', N'Mặt nạ đất sét Innisfree Super Volcanic Pore Clay Mask 2X', 100, 350000, 250000),
('SP0007', N'Nước hoa nữ Chanel No.5 Eau de Parfum', 20, 150000, 120000),
('SP0008', N'Nước hoa nam Dior Sauvage Eau de Parfum', 20, 200000, 150000),
('SP0009', N'Son môi MAC Ruby Woo', 30, 800000, 650000),
('SP0010', N'Kem dưỡng ẩm Laneige Water Bank Moisture Cream', 50, 600000, 450000),
('SP0011', N'Kem chống nắng Biore UV Aqua Rich Watery Essence SPF50+ PA++++', 50, 350000, 250000),
('SP0012', N'Kem nền Maybelline Fit Me Matte + Poreless', 30, 450000, 350000),
('SP0013', N'Son dưỡng môi Vaseline Lip Therapy Original', 20, 100000, 75000),
('SP0014', N'Kem dưỡng da The Ordinary Niacinamide 10% + Zinc 1%', 30,  250000, 200000),
('SP0015', N'Sữa rửa mặt Cosrx Low pH good Morning gel Cleanser', 50,  200000, 150000),
('SP0016', N'Mặt nạ giấy The Face Shop Real Nature Mask Sheet', 100, 20000, 15000),
('SP0017', N'Nước hoa nữ gucci guilty Black Eau de Parfum', 20, 120000, 90000),
('SP0018', N'Nước hoa nam Tom Ford Black Orchid Eau de Parfum', 20, 150000, 120000),
('SP0019', N'Son môi MAC Satin Lipstick', 30,  800000, 650000),
('SP0020', N'Kem dưỡng ẩm SENKA',20,100000,75000)

GO
INSERT INTO BAN(MaHD,MaKH,MaNV,NgayBan,TongTienBan)
values
('HD0001','KH0001','NV0001','2023/03/20',1050000),
('HD0002','KH0002','NV0001','2023/03/20',1350000),
('HD0003','KH0003','NV0001','2023/03/20',950000),
('HD0004','KH0004','NV0002','2023/03/20',700000),
('HD0005','KH0005','NV0002','2023/03/20',240000),
('HD0006','KH0006','NV0002','2023/03/20',420000),
('HD0007','KH0007','NV0001','2023/03/21',450000),
('HD0008','KH0008','NV0002','2023/03/21',400000),
('HD0009','KH0009','NV0003','2023/03/21',1150000),
('HD0010','KH0010','NV0003','2023/03/21',700000),
('HD0011','KH0011','NV0003','2023/03/21',470000),
('HD0012','KH0012','NV0004','2023/03/21',700000),
('HD0013','KH0013','NV0004','2023/03/21',400000),
('HD0014','KH0014','NV0004','2023/03/21',300000),
('HD0015','KH0015','NV0005','2023/03/22',350000),
('HD0016','KH0016','NV0005','2023/03/22',240000),
('HD0017','KH0017','NV0005','2023/03/22',490000),
('HD0018','KH0018','NV0006','2023/03/22',350000),
('HD0019','KH0019','NV0006','2023/03/22',950000),
('HD0020','KH0020','NV0006','2023/03/22',250000)
GO
INSERT INTO BAN_CHITIET(MaHD,MaSP,TenSP,SLBan,ThanhTien)
VALUES
('HD0001','SP0001', N'Kem chống nắng Avene Cleanance Mat SPF50+',2,800000),
('HD0002','SP0002', N'Kem nền MAC Studio Fix Fluid SPF 15',2,1200000),
('HD0003','SP0003', N'Son dưỡng môi Dior Addict Lip glow',1,750000),
('HD0004','SP0004', N'Kem dưỡng da La Roche-Posay Effaclar Duo+',1,650000),
('HD0005','SP0005', N'Sữa rửa mặt Simple Kind to Skin Refreshing Facial Wash gel',1,200000),
('HD0006','SP0006', N'Mặt nạ đất sét Innisfree Super Volcanic Pore Clay Mask 2X',1,350000),
('HD0007','SP0007', N'Nước hoa nữ Chanel No.5 Eau de Parfum',1,150000),
('HD0008','SP0008', N'Nước hoa nam Dior Sauvage Eau de Parfum',1,200000),
('HD0009','SP0009', N'Son môi MAC Ruby Woo',1,800000),
('HD0010','SP0010',N'Kem dưỡng ẩm Laneige Water Bank Moisture Cream',1,600000),
('HD0011','SP0011', N'Kem chống nắng Biore UV Aqua Rich Watery Essence SPF50+ PA++++',1,350000),
('HD0012','SP0012', N'Kem nền Maybelline Fit Me Matte + Poreless',1,450000),
('HD0013','SP0013', N'Son dưỡng môi Vaseline Lip Therapy Original',1,100000),
('HD0014','SP0014', N'Kem dưỡng da The Ordinary Niacinamide 10% + Zinc 1%',1,250000),
('HD0015','SP0015' ,N'Sữa rửa mặt Cosrx Low pH good Morning gel Cleanser',1,200000),
('HD0016','SP0016',N'Mặt nạ giấy The Face Shop Real Nature Mask Sheet', 2,40000),
('HD0017','SP0017',N'Nước hoa nữ gucci guilty Black Eau de Parfum', 2,240000),
('HD0018','SP0018', N'Nước hoa nam Tom Ford Black Orchid Eau de Parfum',1,150000),
('HD0019','SP0019',N'Son môi MAC Satin Lipstick',  1,800000),
('HD0020','SP0020',N'Kem dưỡng ẩm SENKA', 1,100000)


select*from BAN
select*from BAN_CHITIET
select*from KHACHHANG
select*from NHANVIEN
select*from SANPHAM

CREATE INDEX idx_TenSP ON SANPHAM (TenSP)
CREATE INDEX idx_MaHD ON BAN(MaHD)
CREATE INDEX idx_SdtKH ON KHACHHANG(SdtKH)
