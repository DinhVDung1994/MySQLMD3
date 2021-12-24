<%--
  Created by IntelliJ IDEA.
  User: HaniPu
  Date: 24/12/2021
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form method="post" action="/PriceSale">
    <div>
      <h1>PRODUCT</h1>
      <div>
        <label>Tên Sản Phẩm:</label>
        <br>
        <input type="text" name="productName" placeholder="Enter Name Product">
        <br>
        <label>Giá:</label>
        <br><input type="text" name="productPrice" placeholder="0">
        <br>
        <label>Khuyến Mãi:</label>
        <br>
        <input type="text" name="productSale" placeholder="0">
      </div>
      <input type="submit" id="submit" value="Calculate">
    </div>
  </form>
  </body>
</html>
