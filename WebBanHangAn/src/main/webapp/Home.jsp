<%--
  Created by IntelliJ IDEA.
  User: HaniPu
  Date: 30/12/2021
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hội Quán Ăn Kiêng</title>
  <style>
    * {
      margin: 0;
    }
    #main {
      width: 100%;
      padding: 0;
      margin-left: auto;
      margin-right: auto;
    }
    #head {
      width: 100%;
      height: 65px;
      background-color: bisque;
      text-align: center;
    }
    #head-link {
      height: 30px;
      background-color: aquamarine;
      text-align: center;
    }
    #left {
      height: 500px;
      width: 80%;
      background-color: #e2731d;
      float: left;
      text-align: center;
      overflow-x: auto;
      overflow-x: -moz-scrollbars-none;
      -ms-overflow-style: none;
    }
    #left::-webkit-scrollbar {
      width: 0 !important;
      display: none;
    }
    #right {
      height: 500px;
      width: 20%;
      background-color: #6d671a;
      float: right;
      text-align: center;
      overflow-x: auto;
      overflow-x: -moz-scrollbars-none;
      -ms-overflow-style: none;

    }
    #right::-webkit-scrollbar {
      width: 0 !important;
      display: none;
    }
    #footer {
      height: 30px;
      width: 100%;
      clear: both;
      text-align: center;
      float: bottom;
    }
    #content {
      width: 100%;
      height: 500px;
    }
    #navi {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }
    li {
      list-style: none;
      margin-right: 15px;
    }
    select {
      border: none;
      background-color: aquamarine;
    }
    ul#navi li {
      margin-top: 5px;
    }
    ul#navi li ul {
      display: none;
      background: cyan;
      position: absolute;
    }
    ul#navi li:hover ul {
      display: block;
      list-style: none;
    }
    ul#navi li ul li:hover a {
      background: red;
    }
    a {
      text-decoration: none;
    }
    #left .product {
      float: left;
      border: 5px solid white;
    }
    #products{
      margin-left: 60px;
    }
    #logoleft{
      float: left;
    }
    #logoright{
      float: right;
    }
    #logocenter{
      float: left;
      width: 90%;
    }
    #chuchay{
      padding-top: 20px;
    }

  </style>
</head>
<body>
<div id="main">
  <div id="head">
    <div id="logoleft"><img src="logo/logo.jpg" height="65" width="65"/></div>
    <div id="logocenter"><marquee id="chuchay">CHÀO MỪNG BẠN ĐẾN VỚI THẾ GIỚI ĐỒ ĂN DÀNH CHO NGƯỜI KHÔNG GẦY</marquee></div>
    <div id="logoright"><img src="logo/logo.jpg" height="65" width="65"/></div>



  </div>
  <div id="head-link">
    <ul id="navi">
      <li>
        <select>
          <option>Đồ Ăn</option>
          <option>Menu A 1</option>
          <option>Menu A 2</option>
          <option>Menu A 3</option>
          <option>Menu A 4</option>
          <option>Menu A 5</option>
        </select>
      </li>
      <li>Nước Uống
        <ul>
          <li><a href="#">Menu B 1</a></li>
          <li>Menu B 2</li>
          <li>Menu B 3</li>
          <li>Menu B 4</li>
          <li>Menu B 5</li>
        </ul>
      </li>
      <li>Liên Hệ</li>
      <li>Tìm Kiếm</li>
      <li>Đăng Nhập</li>
    </ul>
  </div>
  <div id="content">
    <div id="left">
      <div id="products">
        <div class="product">
          <img src="img1.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img2.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 50.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img3.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 140.000<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img2.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img1.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img3.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img1.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img1.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img1.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img2.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 50.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img3.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 140.000<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img2.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img1.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img3.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img1.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
        <div class="product">
          <img src="img1.jpeg" height="220" width="229"/>
          <div>
            <h4>Nem Chua Rán</h4>
            <p>Giá: 14.500<sup>đ</sup></p>
            <button>Thêm Vào Giỏ Hàng</button>
          </div>
        </div>
      </div>
    </div>
    <div id="right">
      <div class="water">
        <img src="H2O/nuoc1.jpeg" height="228" width="221"/>
        <div>
          <h4>Nem Chua Rán</h4>
          <p>Giá: 14.500<sup>đ</sup></p>
          <button>Thêm Vào Giỏ Hàng</button>
        </div>
      </div>
      <div class="water">
        <img src="H2O/nuoc2.jpeg" height="228" width="221"/>
        <div>
          <h4>Nem Chua Rán</h4>
          <p>Giá: 14.500<sup>đ</sup></p>
          <button>Thêm Vào Giỏ Hàng</button>
        </div>
      </div>
      <div class="water">
        <img src="H2O/nuoc3.jpeg" height="228" width="221"/>
        <div>
          <h4>Nem Chua Rán</h4>
          <p>Giá: 14.500<sup>đ</sup></p>
          <button>Thêm Vào Giỏ Hàng</button>
        </div>
      </div>
      <div class="water">
        <img src="H2O/nuoc4.jpeg" height="228" width="221"/>
        <div>
          <h4>Nem Chua Rán</h4>
          <p>Giá: 14.500<sup>đ</sup></p>
          <button>Thêm Vào Giỏ Hàng</button>
        </div>
      </div>
      <div class="water">
        <img src="H2O/nuoc6.jpeg" height="228" width="221"/>
        <div>
          <h4>Nem Chua Rán</h4>
          <p>Giá: 14.500<sup>đ</sup></p>
          <button>Thêm Vào Giỏ Hàng</button>
        </div>
      </div>
    </div>
  </div>
  <div id="footer">
    <p class="foodter">
      © 2017 Công Ty Cổ Phần Vàng Bạc Đá Quý Phú Nhuận<br>
      170E Phan Đăng Lưu, P. 3, Q. Phú Nhuận, TP. Hồ Chí Minh<br>
      ĐT: 028 39951703 - Fax: 028 3995 1702<br>
    </p>
  </div>
</div>
</body>
</html>
