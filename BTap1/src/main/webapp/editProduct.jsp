<%--
  Created by IntelliJ IDEA.
  User: HaniPu
  Date: 28/12/2021
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/Home?action=edit" method="post">
    <div>
        <label>Ten San Pham</label><input type="text" name="nameProduct" value="${editProduct.getNameProduct()}">
        <label>Giá SAn Pham</label><input type="text" name="priceProduct" value="${editProduct.getPriceProduct()}">
        <label>Số Lượng</label><input type="number" name="soluongProduct" value="${editProduct.getSoluongProduct()}">
        <label>Màu Sắc </label><input type="text" name="colorProduct" value="${editProduct.getColorProduct()}">
        <label>Category</label><input type="text" name="Category" value="${editProduct.getIdcategory()}">
        <input type="submit" value="Edit">
    </div>

</form>
</body>
</html>
