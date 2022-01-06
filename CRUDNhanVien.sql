create database quanlynhanvien;
use quanlynhanvien;
create table nhanvien(
id int auto_increment primary key not null,
hoten varchar(50),
tuoi int,
anh nvarchar(500),
idthanhpho int,
foreign key (idthanhpho) references infornhanvien(idthanhpho)
);
insert into nhanvien(hoten,tuoi,anh,idthanhpho) values('Bui Duc Thang',11,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF-GMCQO8XdCxhl9YKHFTNdM2cdf-SKpqfEQ&usqp=CAU',1);
insert into nhanvien(hoten,tuoi,anh,idthanhpho) values('Bui Duc Trung',12,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj-fDLMwKfO8Eri3LmgoJlpw0ohbYKCundpQ&usqp=CAU',2);
insert into nhanvien(hoten,tuoi,anh,idthanhpho) values('Bui Duc Nam',13,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQRcr7kQ-FnS5KDCgJa4j4YTZiEQJZj_Qi0Q&usqp=CAU',4);
insert into nhanvien(hoten,tuoi,anh,idthanhpho) values('Bui Duc Tu',14,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9VDlARluUrcualaPCqldvVU4cyKvXNTw3nQ&usqp=CAU',5);

create table infornhanvien(
idthanhpho int auto_increment primary key not null,
diachi nvarchar(1000)
);
insert into infornhanvien(diachi) values('TP.HCM');
insert into infornhanvien(diachi) values('TP.HN');
insert into infornhanvien(diachi) values('TP.Da Nang');
insert into infornhanvien(diachi) values('TP.BMT');
insert into infornhanvien(diachi) values('TP.Da Lat');

select id,hoten,tuoi,anh,diachi
from nhanvien
join infornhanvien on infornhanvien.idthanhpho = nhanvien.idthanhpho
