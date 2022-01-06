<%--
  Created by IntelliJ IDEA.
  User: HaniPu
  Date: 28/12/2021
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/Home?action=create" method="post">
<div>

    <label>Ten San Pham</label><input type="text" name="nameProduct">
    <label>Giá SAn Pham</label><input type="text" name="priceProduct">
    <label>Số Lượng </label><input type="text" name="soluongProduct">
    <label>Màu Sắc </label><input type="text" name="colorProduct">
    <label>Category </label><input type="text" name="Category">

    <input type="submit" value="Create">
</div>

</form>
</body>
</html>
