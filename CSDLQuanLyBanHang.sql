
-- tao co so du lieu quan ly ban hang
create database quanlybanhang;
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
OederDetailQTY nvarchar(100)
);
