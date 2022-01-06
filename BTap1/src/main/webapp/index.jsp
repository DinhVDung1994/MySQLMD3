<%--
  Created by IntelliJ IDEA.
  User: HaniPu
  Date: 28/12/2021
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form>
    <div><p>DANH SACH SAN PHAM</p></div>
    <form action="/?action=search" method="post">
        <div id="headerlogo"><img src="img/logoB.png" height="100px" width="100px">
            <input type="text" name="findproduct" placeholder="Tìm kiếm....">
            <input type="submit" name="seach" value="Tìm Kiếm">
        </div>
    </form>
    <a href="/create.jsp?action=create" type="submit" style="background-color: chartreuse">Create</a>


    <table border="1px">
        <thead>
        <th>Ten San Pham</th>
        <th>Giá SAn Pham</th>
        <th>Số Lượng</th>
        <th>Màu Sắc</th>
        <th>Category</th>
        </thead>
        <c:forEach items="${danhSachProduct}" var="pro">
            <tbody>
            <tr>
                <td width="150px"><p>${pro.idProduct}</p></td>
                <td width="150px"><p>${pro.nameProduct}</p></td>
                <td width="150px"><p>${pro.priceProduct}</p></td>
                <td width="150px"><p>${pro.soluongProduct}</p></td>
                <td width="150px"><p>${pro.colorProduct}</p></td>
                <td width="150px"><p>${pro.idcategory}</p></td>
                <td width="150px">
                    <a href="/editProduct.jsp?action=edit&id=${pro.idProduct}" type="submit" style="background-color: yellow">Edit</a>
                    <a href="/Home.jsp?action=delete&id=${pro.idProduct}" type="submit" style="background-color: red">Delete</a>
                </td>
            </tr>
            </tbody>
        </c:forEach>
    </table>

</form>
</body>
</html>
