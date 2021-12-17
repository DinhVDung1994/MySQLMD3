-- create database QuanLyDiemThi;
-- tao bang hoc sinh
create table hocsinh(
MaHS varchar(20) primary key,
TenHS varchar(50),
NgaySinh datetime,
Lop varchar(20),
GT varchar(20)
);
-- tao bang mon hoc
create table monhoc(
MaMH varchar(20) primary key,
TenMH varchar(50)
);
-- tao bang diem
create table bangdiem(
MaHS varchar(20),
foreign key (MaHS) references hocsinh(MaHS),
MaMH varchar(20),
foreign key (MaMH) references monhoc(MaMH),
DiemThi int,
NgayKT datetime,
primary key(MaHS,MaMH)
);
-- tao bang giao vien
create table giaovien(
MaGV varchar(20) primary key,
TenGV varchar(20),
SDT varchar(10)
);
-- chinh sua lai bang mon hoc bo sung them truong MaGV
-- la khoa ngoai cua bang mon hoc
alter table monhoc add MaGV varchar(20);
alter table monhoc add constraint fk_MaGV foreign key (MaGV) references giaovien(MaGV);