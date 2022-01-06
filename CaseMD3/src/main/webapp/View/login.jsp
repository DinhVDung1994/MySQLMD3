<%--
  Created by IntelliJ IDEA.
  User: HaniPu
  Date: 28/12/2021
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hội Quán Ăn Kiêng</title>
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        #headertop {
            width: 100%;
            height: 40px;
            background-color: orangered;
        }

        #headertop p {
            float: right;
            margin: 10px;
        }

        a {
            color: black;
            text-decoration: none;
        }

        #headerlogo {
            width: 100%;
            height: 100px;
            background-color: gainsboro;
        }

        #headerlogo input {
            float: right;
            margin-top: 20px;
        }

        #navi {
            width: 100%;
            height: 50px;
        }

        #navi ul {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        #navi ul li {
            list-style: none;
            margin-right: 15px;
            margin-top: 15px;
            margin-left: 10px;
        }

        #navi ul li a {
            text-decoration: none;
            color: black;
        }

        #contentsale {
            width: 100%;
            height: 300px;
            background-color: palegoldenrod;
            border: 1px solid red;
        }

        #txtsale {
            border: 1px solid grey;
            height: 30px;

        }

        #txtsale p {
            margin-top: 7px;
            margin-left: 25px;
        }

        #productsale {
            float: left;
            margin-right: 15px;
            margin-top: 10px;
        }

        #contentleft {
            width: 24%;
            height: 800px;
            background-color: white;
            border: 1px solid grey;
            float: left;
        }

        #contentright {
            background-color: orange;
            width: 61%;
            height: 800px;
            float: left;
            overflow-x: auto;
            overflow-x: -moz-scrollbars-none;
            -ms-overflow-style: none;
        }

        #contentright::-webkit-scrollbar {
            width: 0 !important;
            display: none;
        }
        #contentrightQC{
            width: 14%;
            height: 800px;
            background-color: chartreuse;
            float: left;
            overflow-x: auto;
            overflow-x: -moz-scrollbars-none;
            -ms-overflow-style: none;
        }
        #contentrightQC::-webkit-scrollbar {
            width: 0 !important;
            display: none;
        }

        .menu p {
            width: 100%;
            height: 30px;
            background-color: red;
            color: white;
            text-align: center;
        }

        #listmenu p {
            width: 100%;
            height: 30px;
            margin-top: 7px;
        }

        #productFoods {
            margin-left: 5px;
        }

        .product {
            float: left;
            margin: 5px;
            background-color: bisque;
        }
        .productDrink{
            margin-left: 8px;
        }

        #footer {
            height: 100px;
            width: 100%;
            clear: both;
            text-align: center;
            float: bottom;
        }
        .foodters{
            padding-top: 50px;
        }

    </style>
</head>
<body>
<header>
    <div id="headertop">
        <p><a href="/">Đăng Nhập</a></p>
        <p><a href="/">Đăng Ký</a></p>
        <p><a href="/">Giỏ Hàng</a></p>
    </div>
    <form action="/?action=search" method="post">
        <div id="headerlogo"><img src="img/logoB.png" height="100px" width="100px">
            <input type="text" name="findproduct" placeholder="Tìm kiếm....">
            <input type="submit" name="seach" value="Tìm Kiếm">
        </div>
    </form>
</header>
<nav>
    <div id="navi">
        <ul>
            <li><a href="/">Trang Chủ</a></li>
            <li><a href="/">Giới Thiệu</a></li>
            <li><a href="/">Sản Phẩm</a></li>
            <li><a href="/">Tin Tuyển Dụng</a></li>
            <li><a href="/">Liên Hệ</a></li>
            <li>Hotline: 1900-1009</li>
            <li>Phục Vụ 27/4</li>
        </ul>
    </div>
</nav>
<div><img src="imgProducts/img/logo5.jpeg" width="100%" height="450px"></div>
<content>
    <div id="contentsale">
        <div id="txtsale"><p>Mời Bạn Đăng Nhập Vào Hệ Thống</p></div>
        <div>
            <form action="/viewLogin" method="post">
            <div style="margin-left: 40%">
                <label>Tài Khoản:</label> <input type="text" name="userLogin">
                <br><br>
                <label>Mật Khẩu: </label><input type="password" name="passLogin">
                <br><br>
                <input action="login" type="submit" value="Đăng Nhập">
                <input action="sign" type="submit" value="Đăng ký">
            </div>
            </form>
        </div>
        <div>
            <form action="/viewLogin?action=sign" method="post">
                <div style="margin-left: 40%">
                    <label>Tài Khoản:</label> <input type="text" name="user">
                    <br><br>
                    <label>Mật Khẩu: </label><input type="password" name="passwork">
                    <br><br>
                    <input type="submit" value="Đăng Ký">
                    <input type="submit" value="Đăng Nhập">
                </div>
            </form>
        </div>
    </div>
    <div id="contentleft">
        <div class="menu"><p>THỰC ĐƠN</p></div>
        <div id="listmenu">
            <p><a href="/?action=monkhaivi">&#9734; Món Khai Vị</a></p>
            <p><a href="/?action=monbun">&#9734; Món Bún</a></p>
            <p><a href="/?action=monga">&#9734; Món Gà</a></p>
            <p><a href="/?action=monbo">&#9734; Món Bò</a></p>
            <p><a href="/?action=monca">&#9734; Món Cá</a></p>
            <p><a href="/?action=monpiza">&#9734; Món Piza</a></p>
            <p><a href="/?action=doannhanh">&#9734; Đồ Ăn Nhanh</a></p>
            <p><a href="/?action=Drink">&#9734; Các Loại Nước Uống</a></p>
        </div>
        <div>
            <div class="menu"><p>THỰC ĐƠN ĐẶC BIỆT</p></div>
            <div><img src="imgProducts/Food/Asanpham10.jpeg" width="100%" style="margin-top: 30px"></div>
            <div><img src="imgProducts/Food/Asanpham20.jpeg" width="100%" style="margin-top: 30px"></div>
        </div>
    </div>
    <div id="contentright">
        <div id="productFoods">
            <c:forEach items="${listSP}" var="sp">
                <div class="product">
                    <div><img src="${sp.imgProductFood}" width="250px" height="200px"></div>
                    <div>${sp.nameProductFood}</div>
                    <div>${sp.priceProductFood}</div>
                    <div><input type="submit" value="Thêm Vào Giỏ Hàng"></div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div id="contentrightQC">
        <marquee id="moveproductsale" onmouseover="this.stop()" onmouseout="this.start()" behavior="scroll" direction="down" height="2000px">
            <c:forEach items="${listProductDrink}" var="spd">
                <div class="productDrink">
                    <div><img src="${spd.imgProductDrink}" width="170" height="150"></div>
                    <div>${spd.nameProductDrink}</div>
                    <div>${spd.priceProductDrink}</div>
                    <div><input type="submit" value="Thêm Vào Giỏ Hàng"></div>
                </div>
            </c:forEach>
        </marquee>
    </div>
</content>
<div id="footer">
    <p class="foodters">
        Đ/c: Số 23 Lô TT01 Đường Xanh Đỏ Tím Vàng Nháy Nháy , P. Thanh Lâu, Q. Bốn Đình, TP. Hà Nội<br>
        ĐT: 01692698618 - Fax: 0392 698 618<br>
    </p>
</div>
</body>
</html>
