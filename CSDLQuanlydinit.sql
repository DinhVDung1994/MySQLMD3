-- tao database quanlydunit
create database quanlydinit;
-- xoa database quanlydunit
drop database quanlydinit;
-- su dung database quanlydinit
use quanlydinit;
-- tao bang thanh pho
create table thanhpho(
IDThanhPho int auto_increment primary key not null,
NameThanhPho nvarchar(255)
);
-- tao bang loai tour
create table loaitour(
MaTour int auto_increment primary key not null,
MaLoai nvarchar(15),
TenLoai nvarchar(255)
);
-- tao bang diem den du nit
create table diemdendunit(
IDDiemDen int auto_increment primary key not null,
NameDiemDen nvarchar(255),
MoTa nvarchar(255),
IDThanhPho int,
foreign key (IDThanhPho) references thanhpho(IDThanhPho)
);
-- tao bang khach hang
create table khachhang(
IDKhachHang int auto_increment primary key not null,
NameKH nvarchar(255),
SoCMND nvarchar(9),
NamSinh date,
IDThanhPho int,
foreign key (IDThanhPho) references thanhpho(IDThanhPho)
);
-- tao bang tour
create table tour(
TourID int auto_increment primary key not null,
MaTour int,
foreign key (MaTour) references loaitour(MaTour),
GiaDiTour double,
NgayBatDau date,
NgayKetThuc date
);
-- tao bang hoa don
create table hoadon(
MaHD int auto_increment primary key not null,
TourID int,
foreign key (TourID) references tour(TourID),
IDKhachHang int,
foreign key (IDKhachHang) references khachhang(IDKhachHang),
TrangThai nvarchar(50)
);
-- nhap du lieu cho bang thanh pho
insert into thanhpho(NameThanhPho) values ('TP.HCM');
insert into thanhpho(NameThanhPho) values ('TP.Da Nang');
insert into thanhpho(NameThanhPho) values ('TP.BMT');
insert into thanhpho(NameThanhPho) values ('Lao Cai');
insert into thanhpho(NameThanhPho) values ('Ha Giang');
-- nhap du lieu cho bang loai tour
insert into  loaitour(MaLoai,TenLoai) values('3N2D','FullSerViec');
insert into  loaitour(MaLoai,TenLoai) values('2N1D','FullTopping');
-- nhap du lieu cho bang diem den du nit
insert into diemdendunit(NameDiemDen,MoTa,IDThanhPho) values('Thảo Cầm Viên','Tham Quan Phong Cảnh Nhà Ma',1);
insert into diemdendunit(NameDiemDen,MoTa,IDThanhPho) values('Phong Nha Kẻ Chỉ Vang','Khám Phá Động Phê Pha',3);
insert into diemdendunit(NameDiemDen,MoTa,IDThanhPho) values('Bãi Biển Sầm Xì','Đi Xe Tăng Ra Sầm Xì Tắm Biển',2);
insert into diemdendunit(NameDiemDen,MoTa,IDThanhPho) values('HomeStay Na Hang','Lên NaHang Mất Tiền Thuê Nhà Nghỉ Rồi Về',4);
insert into diemdendunit(NameDiemDen,MoTa,IDThanhPho) values('Nóc Nhà Bạn','Trèo Lên Cây Mít í a í à',5);
-- nhap du lieu cho bang khach hang
insert into khachhang(NameKH,SoCMND,NamSinh,IDThanhPho) values('Bui Viet Thang','123456789','1900/02/12',2);
insert into khachhang(NameKH,SoCMND,NamSinh,IDThanhPho) values('Tran Tu Nam','147258369','1990/12/28',3);
insert into khachhang(NameKH,SoCMND,NamSinh,IDThanhPho) values('Hoang Lao Ta','201548698','1899/03/30',5);
insert into khachhang(NameKH,SoCMND,NamSinh,IDThanhPho) values('Dinh Van Dung','358946759','2000/12/24',2);
insert into khachhang(NameKH,SoCMND,NamSinh,IDThanhPho) values('Nguyen Van Tu','504865916','2005/8/09',2);
insert into khachhang(NameKH,SoCMND,NamSinh,IDThanhPho) values('Doan The Hiep','759462153','1000/6/9',2);
insert into khachhang(NameKH,SoCMND,NamSinh,IDThanhPho) values('Nguyen Duc Trung','305649852','1580/12/15',2);
insert into khachhang(NameKH,SoCMND,NamSinh,IDThanhPho) values('Cao Thai Son','183927456','1694/7/27',2);
insert into khachhang(NameKH,SoCMND,NamSinh,IDThanhPho) values('Tran Khuong','105180190','1862/4/12',2);
insert into khachhang(NameKH,SoCMND,NamSinh,IDThanhPho) values('Khuong Tu Nha','349761508','3501/6/9',2);
-- nhap du lieu cho bang tour
insert into tour(MaTour,GiaDiTour,NgayBatDau,NgayKetThuc) values(1,15000,'2021/3/15','2021/3/18');
insert into tour(MaTour,GiaDiTour,NgayBatDau,NgayKetThuc) values(2,25000,'2021/3/28','2021/4/5');
insert into tour(MaTour,GiaDiTour,NgayBatDau,NgayKetThuc) values(2,30000,'2021/7/15','2021/7/18');
insert into tour(MaTour,GiaDiTour,NgayBatDau,NgayKetThuc) values(1,35000,'2021/4/15','2021/4/18');
insert into tour(MaTour,GiaDiTour,NgayBatDau,NgayKetThuc) values(1,40000,'2021/6/15','2021/8/18');
insert into tour(MaTour,GiaDiTour,NgayBatDau,NgayKetThuc) values(1,45000,'2021/3/25','2021/9/18');
insert into tour(MaTour,GiaDiTour,NgayBatDau,NgayKetThuc) values(2,50000,'2021/12/15','2022/3/18');
insert into tour(MaTour,GiaDiTour,NgayBatDau,NgayKetThuc) values(2,55000,'2021/3/15','2021/3/18');
insert into tour(MaTour,GiaDiTour,NgayBatDau,NgayKetThuc) values(2,65000,'2021/1/15','2021/3/18');
insert into tour(MaTour,GiaDiTour,NgayBatDau,NgayKetThuc) values(2,75000,'2021/2/15','2021/3/10');
-- nhap du lieu cho bang hoa don
insert into hoadon(TourID,IDKhachHang,TrangThai) values(1,4,'A');
insert into hoadon(TourID,IDKhachHang,TrangThai) values(2,6,'B');
insert into hoadon(TourID,IDKhachHang,TrangThai) values(1,9,'A');
insert into hoadon(TourID,IDKhachHang,TrangThai) values(2,1,'B');
insert into hoadon(TourID,IDKhachHang,TrangThai) values(1,2,'A');
insert into hoadon(TourID,IDKhachHang,TrangThai) values(1,6,'B');
insert into hoadon(TourID,IDKhachHang,TrangThai) values(2,5,'A');
insert into hoadon(TourID,IDKhachHang,TrangThai) values(1,7,'C');
insert into hoadon(TourID,IDKhachHang,TrangThai) values(2,1,'A');
insert into hoadon(TourID,IDKhachHang,TrangThai) values(1,8,'C');

-- Thống kê số lượng tour của các thành phố
select NameThanhPho,count(NameKH) as 'So Lan Khach Den'
from thanhpho
join khachhang on khachhang.IDThanhPho = thanhpho.IDThanhPho
group by NameThanhPho;

-- Tính số tour có ngày bắt đầu trong tháng 3 năm 2020

-- xuat bang cac tour bat dau vao thang 3 nam 2021
create view tourbeginmonth3 as
select *
from tour
where month(NgayBatDau) =3 and year(NgayBatDau) = 2021;
-- dem so luong cac tuor bat dau vao thang 3 thong qua bang tourbeginmonth3
select count(TourID) as 'So Luong Cac Tour Bat Dau Vao Thang 3'
from tourbeginmonth3;

-- Tính số tour có ngày kết thúc trong tháng 4 năm 2020
create view tourendmonth3 as
select *
from tour
where month(NgayKetThuc) =4 and year(NgayKetThuc) = 2021;
-- dem so luong cac tuor ket thuc vao thang 4 nam 2021 thong qua bang tourendmonth3
select count(TourID) as 'So Luong Cac Tour Ket Thuc Vao Thang 4'
from tourendmonth3;



