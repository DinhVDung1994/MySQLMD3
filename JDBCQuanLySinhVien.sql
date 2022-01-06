create database danhsachsinhvien;
use danhsachsinhvien;
create table sinhvien(
id int auto_increment primary key not null,
hoten nvarchar(50),
birthday nvarchar(25),
address nvarchar(200),
numberphone varchar(10),
email nvarchar(100),
classroom varchar(10)
);
INSERT INTO `danhsachsinhvien`.`sinhvien` (`hoten`, `birthday`, `address`, `numberphone`, `email`, `classroom`) VALUES ('Dương Khai', '1994/03/30', 'Đông Vực', '0147258369', 'Khai@gmail.com', 'C09K1');
INSERT INTO `danhsachsinhvien`.`sinhvien` (`hoten`, `birthday`, `address`, `numberphone`, `email`, `classroom`) VALUES ('Tiểu Vú', '1995/05/15', 'Bắc Vực', '0123456789', 'VuMuoi@yahoo.com', 'C01K2');
INSERT INTO `danhsachsinhvien`.`sinhvien` (`hoten`, `birthday`, `address`, `numberphone`, `email`, `classroom`) VALUES ('Tam Ka', '1993/06/18', 'Nam Vực', '0159357258', 'TamCongTu@nhagiau.com', 'C100K5');
INSERT INTO `danhsachsinhvien`.`sinhvien` (`hoten`, `birthday`, `address`, `numberphone`, `email`, `classroom`) VALUES ('Trương Nhược Tích', '1998/08/24', 'Tây Cực', '0943761486', 'TichTich@minu.org', 'C11K6');
