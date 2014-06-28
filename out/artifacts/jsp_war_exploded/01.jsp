<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-26
  Time: 下午1:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp实例1</title>
</head>
<body style="text-align: center">
    <h1 style="color: blue;align-content: center">多种字体显示</h1>
    <br/>
    <hr/>
<div style="align-content: center;color: black">

    <%
    for (int i = 1; i < 7; i++) {
        out.println("<h"+i+">"+"HelloWorld"+"</h"+i+">"+"<br>");
    }
%>
</div>
</body>
</html>
