
-- tao co so du lieu quan ly ban hang
create database quanlybanhang;
-- chay database quanlybanhang
use quanlybanhang;
-- tao bang khach hang
create table customer(
CustomerID int auto_increment primary key not null,
CustomerName nvarchar(50) null,
CustomerAge int check (CustomerAge between 0 and 99)
);
-- tao bang san pham
create table product(
ProductID int auto_increment primary key not null,
ProductName nvarchar(50),
ProductPrice double check(ProductPrice > 0 )
);
-- tao bang dat hang
create table orders(
OrderID int auto_increment primary key not null,
CustomerID int,
foreign key (CustomerID) references customer(CustomerID),
OrderDate date,
OrderTotalPrice double
);
-- tao bang chi tiet don hang
create table orderdetail(
OrderID int,
foreign key (OrderID) references orders(OrderID),
ProductID int,
foreign key (ProductID) references product(ProductID),
OederDetailQTY int
);
-- nhap du lieu cho bang customer
insert into customer(CustomerName,CustomerAge) values ('Minh Quan',10);
insert into customer(CustomerName,CustomerAge) values ('Ngoc Oanh',20);
insert into customer(CustomerName,CustomerAge) values ('Hong Ha',50);
-- nhap du lieu cho bang order
insert into orders(CustomerID,OrderDate) values (1,'2006/3/21');
insert into orders(CustomerID,OrderDate) values (2,'2006/3/23');
insert into orders(CustomerID,OrderDate) values (1,'2006/3/16');
-- nhap du lieu cho bang product
insert into product(ProductName,ProductPrice) values ('May Giat','3');
insert into product(ProductName,ProductPrice) values ('Tu Lanh','5');
insert into product(ProductName,ProductPrice) values ('Dieu Hoa','7');
insert into product(ProductName,ProductPrice) values ('Quat','1');
insert into product(ProductName,ProductPrice) values ('Bep Dien','2');
-- nhap du lieu cho bang orderdetail
insert into orderdetail(OrderID,ProductID,OederDetailQTY) values(1,1,3);
insert into orderdetail(OrderID,ProductID,OederDetailQTY) values(1,3,7);
insert into orderdetail(OrderID,ProductID,OederDetailQTY) values(1,4,2);
insert into orderdetail(OrderID,ProductID,OederDetailQTY) values(2,1,1);
insert into orderdetail(OrderID,ProductID,OederDetailQTY) values(3,1,8);
insert into orderdetail(OrderID,ProductID,OederDetailQTY) values(2,5,4);
insert into orderdetail(OrderID,ProductID,OederDetailQTY) values(2,3,3);
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select OrderID,OrderDate,OrderTotalPrice
from orders;
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select CustomerName,ProductName
from customer
join orders on orders.CustomerID = customer.CustomerID
join orderdetail on orderdetail.OrderID = orders.OrderID
join product on product.ProductID = orderdetail.ProductID;
-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select customer.CustomerID,CustomerName,CustomerAge
from customer
left join orders on orders.CustomerID = customer.CustomerID
where orders.CustomerID is null;
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại
-- mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
