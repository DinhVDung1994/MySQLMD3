<%--
  Created by IntelliJ IDEA.
  User: HaniPu
  Date: 24/12/2021
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form method="post" action="/converter">
    <div>
      <div><h1>Currency Converter</h1></div>
      <div>
        <label>Rate:</label><br>
        <input type="text" name="rate" placeholder="Enter Rate">
      </div>
      <div>
        <label>USD:</label><br>
        <input type="text" name="usd" placeholder="0">
      </div>
      <div><input type="submit" id="submit" value="Converter"></div>
    </div>
  </form>
  </body>
</html>
