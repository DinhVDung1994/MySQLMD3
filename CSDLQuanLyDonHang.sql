create database quanlydonhang;
-- tao bang phieuxuat
create table phieuxuat(
SoPX int auto_increment primary key not null,
NgayXuat date
);
-- tao bang vattu
create table vattu(
MaVT varchar(10) primary key not null,
TenVT nvarchar(50)
);
-- tao bang phieu nhap
create table phieunhap(
SoPN int auto_increment primary key not null,
NgayNhap date
);
-- tao bang chitietphieuxuat
create table chitietphieuxuat(
SoPX int not null,
foreign key(SoPX) references phieuxuat(SoPX),
MaVT varchar(10) not null,
foreign key (MaVT) references vattu(MaVT),
SoLuongXuat double not null,
DonGiaXuat double not null
);
-- tao bang chitietphieunhap
create table chitietphieunhap(
SoPN int not null,
foreign key (SoPN) references phieunhap(SoPN),
MaVT varchar(10) not null,
foreign key (MaVT) references vattu(MaVT),
SoLuongNhap double not null,
DonGiaNhap double not null
);
