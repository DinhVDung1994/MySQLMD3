-- tao database quanlynhahang
create database quanlynhahang;
-- use quanlynhahang
use quanlynhahang;
-- tao bang loai san pham
create table loaisanpham(
idTypeProduct int auto_increment primary key not null,
nameTypeProduct nvarchar(100)
);
-- tao bang sanpham
create table sanpham(
idProduct int auto_increment primary key not null,
nameProduct nvarchar(100),
priceProduct double,
imgProduct nvarchar(2000),
idTypeProduct int,
foreign key (idTypeProduct) references loaisanpham(idTypeProduct)
);
-- tao bang nuocuong
create table nuocuong(
idProductDrink int auto_increment primary key not null,
nameProductDrink nvarchar(45),
priceProductDrink double,
imgProductDrink nvarchar(2000)
);
-- nhap du lieu cho bang loai san pham
INSERT INTO `quanlynhahang`.`loaisanpham` (`nameTypeProduct`) VALUES ('Gà');
INSERT INTO `quanlynhahang`.`loaisanpham` (`nameTypeProduct`) VALUES ('Mì Xào');
INSERT INTO `quanlynhahang`.`loaisanpham` (`nameTypeProduct`) VALUES ('Bò');
INSERT INTO `quanlynhahang`.`loaisanpham` (`nameTypeProduct`) VALUES ('Pizza');
INSERT INTO `quanlynhahang`.`loaisanpham` (`nameTypeProduct`) VALUES ('Đồ Ăn Nhanh');
INSERT INTO `quanlynhahang`.`loaisanpham` (`nameTypeProduct`) VALUES ('Các Loại Nước');
INSERT INTO `quanlynhahang`.`loaisanpham` (`nameTypeProduct`) VALUES ('Bún');
INSERT INTO `quanlynhahang`.`loaisanpham` (`nameTypeProduct`) VALUES ('Cá');
-- nhap du lieu cho bang san pham
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Pizza Hải Sản', '150.000', '/imgProducts/Food/Asanpham1.jpeg', '4');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Pizza Gà', '100.000', '/imgProducts/Food/Asanpham2.jpeg', '4');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Pizza Thập Cẩm', '125.000', '/imgProducts/Food/Asanpham3.jpeg', '4');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Mì Xào Thập Cẩm', '50.000', '/imgProducts/Food/Asanpham4.jpeg', '2');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Mì Xào Lòng Bò', '60.000', '/imgProducts/Food/Asanpham5.jpeg', '2');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Mì Xào Hải Sản', '80.000', '/imgProducts/Food/Asanpham6.jpeg', '2');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Cá Sốt Chua Ngọt', '150.000', '/imgProducts/Food/Asanpham8.jpeg', '8');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Cá Hấp Bia', '250.000', '/imgProducts/Food/Asanpham10.jpeg', '8');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Cá Ngừ Nhật Bổn', '400.000', '/imgProducts/Food/Asanpham9.jpeg', '8');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Bò Sốt Vang', '100.000', '/imgProducts/Food/Asanpham11.jpeg', '3');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Bò Hầm Rau Củ', '130.000', '/imgProducts/Food/Asanpham12.jpeg', '3');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Bún Cá', '50.000', '/imgProducts/Food/Asanpham13.jpeg', '7');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Bún Riêu Cua', '50.000', '/imgProducts/Food/Asanpham14.jpeg', '7');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Gà Rang Muối', '180.000', '/imgProducts/Food/Asanpham15.jpeg', '1');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Gà Bó Xôi', '240.000', '/imgProducts/Food/Asanpham18.jpeg', '1');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Bánh Mìn Trứng', '25.000', '/imgProducts/Food/Asanpham19.jpeg', '5');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Bánh Mì Thịt', '30.000', '/imgProducts/Food/Asanpham20.jpeg', '5');
INSERT INTO `quanlynhahang`.`sanpham` (`nameProduct`, `priceProduct`, `imgProduct`, `idTypeProduct`) VALUES ('Gà Không Nối Thoát', '500.000', '/imgProducts/Food/Asanpham17.jpeg', '1');
-- nhap du lieu cho bang nuocuong
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('Coca-Cola', '10000', '/imgProducts/Drink/Usanpham1.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('Pepsi', '11000', '/imgProducts/Drink/Usanpham2.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('Fanta', '12000', '/imgProducts/Drink/Usanpham3.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('C2', '13000', '/imgProducts/Drink/Usanpham4.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('Sting', '14000', '/imgProducts/Drink/Usanpham5.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('ICE+', '15000', '/imgProducts/Drink/Usanpham6.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('7up', '16000', '/imgProducts/Drink/Usanpham7.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('Driver', '17000', '/imgProducts/Drink/Usanpham8.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('Bia Tiger', '18000', '/imgProducts/Drink/Usanpham9.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('Bia Sài Gòn', '19000', '/imgProducts/Drink/Usanpham12.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('Bia 4 Con 3', '20000', '/imgProducts/Drink/Usanpham13.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('Bia Hà Nội', '21000', '/imgProducts/Drink/Usanpham14.jpeg');
INSERT INTO `quanlynhahang`.`nuocuong` (`nameProductDrink`, `priceProductDrink`, `imgProductDrink`) VALUES ('Bia Hơi', '25000', '/imgProducts/Drink/Usanpham15.jpeg');

-- tao bang loai acc
create table loaiac(
idloaiacc int primary key not null,
nameLoaiAcc nvarchar(15)
);

INSERT INTO loaiac(idLoaiAcc,nameLoaiAcc) values(1,'admin');
INSERT INTO loaiac(idLoaiAcc,nameLoaiAcc) values(2,'user');

-- tao bang Account
create table account(
idaccount int auto_increment primary key not null,
tenaccount nvarchar(15),
passaccount nvarchar(10),
sodienthoai nvarchar(10),
idloaiacc int,
foreign key (idloaiacc) references loaiac(idloaiacc)
);

INSERT INTO `quanlynhahang`.`account` (`idaccount`, `tenaccount`, `passaccount`, `sodienthoai`, `idloaiacc`) VALUES ('1', 'admini', 'admin', '0159357258', '1');
INSERT INTO `quanlynhahang`.`account` (`idaccount`, `tenaccount`, `passaccount`, `sodienthoai`, `idloaiacc`) VALUES ('2', 'Nam', '123456', '0258369147', '2');
INSERT INTO `quanlynhahang`.`account` (`idaccount`, `tenaccount`, `passaccount`, `sodienthoai`, `idloaiacc`) VALUES ('3', 'Nu', '123123', '0125846978', '2');
