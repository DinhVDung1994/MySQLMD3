
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
-- Hi???n th??? c??c th??ng tin  g???m oID, oDate, oPrice c???a t???t c??? c??c h??a ????n trong b???ng Order
select OrderID,OrderDate,OrderTotalPrice
from orders;
-- Hi???n th??? danh s??ch c??c kh??ch h??ng ???? mua h??ng, v?? danh s??ch s???n ph???m ???????c mua b???i c??c kh??ch
select CustomerName,ProductName
from customer
join orders on orders.CustomerID = customer.CustomerID
join orderdetail on orderdetail.OrderID = orders.OrderID
join product on product.ProductID = orderdetail.ProductID;
-- Hi???n th??? t??n nh???ng kh??ch h??ng kh??ng mua b???t k??? m???t s???n ph???m n??o
select customer.CustomerID,CustomerName,CustomerAge
from customer
left join orders on orders.CustomerID = customer.CustomerID
where orders.CustomerID is null;
-- Hi???n th??? m?? h??a ????n, ng??y b??n v?? gi?? ti???n c???a t???ng h??a ????n
-- (gi?? m???t h??a ????n ???????c t??nh b???ng t???ng gi?? b??n c???a t???ng lo???i
-- m???t h??ng xu???t hi???n trong h??a ????n. Gi?? b??n c???a t???ng lo???i ???????c t??nh = odQTY*pPrice)
