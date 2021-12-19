-- xoa database quanlydiemthisinhvien
drop database quanlydiemthisinhvien;
-- tao database quanlydiemsinhvien
create database quanlydiemthisinhvien;
-- chay du lieu tren database quanlydiemsinhvien
use quanlydiemthisinhvien;
-- tao bang khoa
create table khoa(
MaKhoa nvarchar(15) primary key not null,
TenKhoa nvarchar(50),
SoCBGD int
);
-- tao bang mon hoc
create table monhoc(
MaMH nvarchar(10) primary key not null,
TenMH nvarchar(45),
SoTiet int
);
-- tao bang lop
create table lop(
MaLop nvarchar(10) primary key not null,
TenLop nvarchar(50),
MaKhoa nvarchar(15),
foreign key (MaKhoa) references khoa(MaKhoa)
);
-- tao bang sinh vien
create table sinhvien(
MaSV int auto_increment primary key not null,
HoTen nvarchar(50),
GioiTinh nvarchar(5),
NgaySinh date,
MaLop nvarchar(10),
foreign key (MaLop) references lop(MaLop),
HocBong nvarchar(45),
DiaChi nvarchar(255)
);
-- tao bang ket qua
create table ketqua(
MaSV int,
foreign key (MaSv) references sinhvien(MaSV),
MaMH nvarchar(10),
foreign key (MaMH) references monhoc(MaMH),
-- primary key(MaSV,MaMH),
DiemThi float
);

-- nhap du lieu cho bang khoa
insert into khoa(MaKhoa,TenKhoa,SoCBGD) values('CNTT','Khoa Cong Nghe Thong Tin',30);
insert into khoa(MaKhoa,TenKhoa,SoCBGD) values('KTA1','Kinh Te',10);
insert into khoa(MaKhoa,TenKhoa,SoCBGD) values('TLHOC','Tam Linh Hoc Thuat',15);
insert into khoa(MaKhoa,TenKhoa,SoCBGD) values('NNB2','Ngoai Ngu',9);
insert into khoa(MaKhoa,TenKhoa,SoCBGD) values('SOHOC6H30','Than So Hoc',1000);
-- nhap du lieu cho bang mon hoc
insert into monhoc(MaMH,TenMH,SoTiet) values('JAV19','Lập Trình OOP',15);
insert into monhoc(MaMH,TenMH,SoTiet) values('ARRAY','Mảng JAV',10);
insert into monhoc(MaMH,TenMH,SoTiet) values('EL1','Write English',25);
insert into monhoc(MaMH,TenMH,SoTiet) values('QTA4','Tìm Hiểu Kinh Tế',100);
insert into monhoc(MaMH,TenMH,SoTiet) values('MySQL','Tìm Hiểu SQL',54);
insert into monhoc(MaMH,TenMH,SoTiet) values('6H30','Sau 6h30 Ai Giau Hon Ai',100000);
-- nhap lieu cho bang lop
insert into lop(MaLop,TenLop,MaKhoa) values('C0921K3','LT Java','CNTT');
insert into lop(MaLop,TenLop,MaKhoa) values('C0821K4','CSDL SQL','CNTT');
insert into lop(MaLop,TenLop,MaKhoa) values('C0521K8','Quan Tri Kinh Doanh','KTA1');
insert into lop(MaLop,TenLop,MaKhoa) values('C0122K5','Hoc Làm Thầy Bói','TLHOC');
-- nhap du lieu cho bang sinh vien
insert into sinhvien(HoTen,GioiTinh,NgaySinh,MaLop,HocBong,DiaChi) values('Diep Van','Nam','1929/05/13','C0921K3','Co','Bac Ninh');
insert into sinhvien(HoTen,GioiTinh,NgaySinh,MaLop,HocBong,DiaChi) values('Yen Rau','Nu','2001/01/18','C0821K4','Khong','HCM');
insert into sinhvien(HoTen,GioiTinh,NgaySinh,MaLop,HocBong,DiaChi) values('Hoang Phi Hong','Nam','1869/1/23','C0521K8','Khong','Ha Giang');
insert into sinhvien(HoTen,GioiTinh,NgaySinh,MaLop,HocBong,DiaChi) values('Tran Diep An','Nu','1999/12/21','C0122K5','Co','Bac Ninh');
insert into sinhvien(HoTen,GioiTinh,NgaySinh,MaLop,HocBong,DiaChi) values('Duong Tam','Nam','1829/07/29','C0521K8','Khong','Ha Noi');
insert into sinhvien(HoTen,GioiTinh,NgaySinh,MaLop,HocBong,DiaChi) values('Hang Nga','Nu','2000/12/24','C0122K5','Co','Bac Ninh');

-- nhap du lieu cho bang ket qua
insert into ketqua(MaSV,MaMH,DiemThi) values(1,'JAV19',8);
insert into ketqua(MaSV,MaMH,DiemThi) values(2,'EL1',7);
insert into ketqua(MaSV,MaMH,DiemThi) values(3,'6H30',5);
insert into ketqua(MaSV,MaMH,DiemThi) values(4,'ARRAY',3);
insert into ketqua(MaSV,MaMH,DiemThi) values(5,'EL1',6);
insert into ketqua(MaSV,MaMH,DiemThi) values(2,'JAV19',9);
insert into ketqua(MaSV,MaMH,DiemThi) values(5,'QTA4',8);
insert into ketqua(MaSV,MaMH,DiemThi) values(3,'6H30',4);
insert into ketqua(MaSV,MaMH,DiemThi) values(1,'MySQL',10);
-- Câu 1: Liệt kê danh sách các lớp của khoa, thông tin cần Malop, TenLop, MaKhoa
select MaLop,TenLop,MaKhoa
from lop;
-- Câu 2: Lập danh sách sinh viên gồm: MaSV, HoTen, HocBong
select MaSV,HoTen,HocBong
from sinhvien;
-- Câu 3: Lập danh sách sinh viên có học bổng. Danh sách cần MaSV, Nu, HocBong
select MaSV,HoTen,GioiTinh,HocBong
from sinhvien
where HocBong like 'Co';
-- Câu 5: Lập danh sách sinh viên có họ ‘Trần’
select *
from sinhvien
where HoTen like 'Tran%';
-- Câu 6: Lập danh sách sinh viên nữ có học bổng
select *
from sinhvien
where GioiTinh like 'Nu' and HocBong like 'Co';
-- Câu 7: Lập danh sách sinh viên nữ hoặc danh sách sinh viên có học bổng
select *
from sinhvien
where GioiTinh like 'Nu' or HocBong like 'Co';
-- Câu 8: Lập danh sách sinh viên có năm sinh từ 1850 đến 1995.
-- Danh sách cần các thuộc tính của quan hệ SinhVien
select *
from sinhvien
where year(NgaySinh) between 1850 and 1995;
-- Câu 9: Liệt kê danh sách sinh viên được sắp xếp tăng dần theo Năm Sinh
select *
from sinhvien
order by year(NgaySinh);
-- Câu 10: Liệt kê danh sách sinh viên được sắp xếp giảm dần theo HocBong
select *
from sinhvien
where HocBong like 'Co'
order by PriceHB desc;
--  Lập danh sách sinh viên có học bổng của khoa CNTT.
select sinhvien.*,MaKhoa
from sinhvien
join lop on lop.MaLop = sinhvien.MaLop
where HocBong like 'Co' and MaKhoa like 'CNTT';
-- Câu 14: Cho biết số sinh viên của mỗi lớp
select MaLop, count(HoTen) as 'SoLuongSVTheoHoc'
from sinhvien
group by MaLop;
-- Câu 15: Cho biết số lượng sinh viên của mỗi khoa.
select khoa.MaKhoa, count(HoTen) as 'SoLuongSVTheoHoc'
from sinhvien
join lop on lop.MaLop = sinhvien.MaLop
join khoa on khoa.MaKhoa = lop.MaKhoa
group by MaKhoa;
-- Câu 16: Cho biết số lượng sinh viên nữ của mỗi khoa.
select khoa.MaKhoa,count(HoTen) as 'SoSVNuTheoHoc'
from sinhvien
join lop on lop.MaLop = sinhvien.MaLop
join khoa on khoa.MaKhoa = lop.MaKhoa
where GioiTinh like 'Nu'
group by MaKhoa;
-- Câu 17: Cho biết tổng tiền học bổng của mỗi lớp
			-- them cot PriceHB cho bang sinh vien
			alter table sinhvien
			add PriceHB double check(PriceHB >0) after HocBong;
            -- cap nhat so tien hoc bong cho cac sinh vien co hoc bong
			update sinhvien set PriceHB =10000000 where MaSV =1;
			update sinhvien set PriceHB =5000000 where MaSV =4;
			update sinhvien set PriceHB =8000000 where MaSV =6;
     -- tinh tong tien hoc bong       
		select MaLop,sum(PriceHB) as 'TongTienHBCuaLop'
		from sinhvien
		group by MaLop;
-- Câu 18: Cho biết tổng số tiền học bổng của mỗi khoa
		-- them thong tin SV de tinh toan
        insert into sinhvien(HoTen,GioiTinh,NgaySinh,MaLop,HocBong,DiaChi) values('Anh Co','Nam','2201/01/18','C0821K4','Co','HCM');
		update sinhvien set PriceHB =19000000 where MaSV =8;
	-- tinh tien nao
    select khoa.MaKhoa,TenKhoa,sum(PriceHB) as 'TongTienHBCuaKhoa'
    from sinhvien
    join lop on lop.MaLop = sinhvien.MaLop
    join khoa on khoa.MaKhoa = lop.MaKhoa
    group by khoa.MaKhoa;
-- Câu 19: Lập danh sánh những khoa có nhiều hơn 100 sinh viên. Danh sách cần: MaKhoa, TenKhoa, Soluong
-- do khong co du du lieu 100 SV len cau hoi sex chuyen thanh hien thi khoa co so luong SV lon hon 2
-- Câu 20: Lập danh sánh những khoa có nhiều hơn 50 sinh viên nữ. Danh sách cần: MaKhoa, TenKhoa, Soluong

select khoa.MaKhoa,TenKhoa,count(HoTen) as 'SoLuongSV'
from khoa
join lop on lop.MaKhoa = khoa.MaKhoa
join sinhvien on sinhvien.MaLop = lop.MaLop
where GioiTinh like 'Nu'
group by khoa.MaKhoa
having SoLuongSV >2;

-- Câu22: Lập danh sách sinh viên có học bổng cao nhất
select max(PriceHB) as 'HocBongCaoNhat'
from sinhvien;
-- Câu 23: Lập danh sách sinh viên có điểm thi môn English cao nhất
select max(DiemThi) as 'DiemThi Cao Nhat Mon English'
from ketqua
where MaMH like 'EL1';
-- Câu 25: Cho biết khoa nào có nhiều sinh viên nhất
select khoa.MaKhoa,count(HoTen) as 'SoSVTheoHoc'
from khoa
join lop on lop.MaKhoa = khoa.MaKhoa
join sinhvien on sinhvien.MaLop = lop.MaLop
group by khoa.MaKhoa
order by SoSVTheoHoc desc
limit 1;


